

CREATE VIEW [RV].[STOCK_REPORT_OBS]
AS
SELECT
	IP.CONTRACT							AS SITE
	, IP.PART_NO						AS PART
	, IP.DESCRIPTION					AS DESCRIPTION
	, IP.SECOND_COMMODITY				AS COMMODITY_GROUP
	, SUM(ISNULL(PS.QTY_ONHAND, 0))		AS ONHAND
	, ISNULL(CO.ON_ORDER, 0)			AS ON_CUST_ORDER   
	, SUM(ISNULL(PS.QTY_ONHAND, 0)) - ISNULL(CO.ON_ORDER, 0) AS AVAILABLE
	, ISNULL(PO.ON_ORDER, 0)			AS ON_PURCH_ORDER
	, CASE WHEN SO.ON_SO <= 0 THEN 0 ELSE SO.ON_SO END AS ON_SHOP_ORDER
	, ISNULL(CS.QTY_REMAINING,0)		AS COMP_ON_SO
FROM		[$(DWH)].IFS.INVENTORY_PART IP  
INNER JOIN  (
				SELECT 
					IPS.CONTRACT
					, IPS.PART_NO
					, IPS.LOT_BATCH_NO
					, IPS.QTY_ONHAND    
				FROM	[$(DWH)].IFS.INVENTORY_PART_IN_STOCK IPS    
				WHERE	IPS.CONTRACT = 'FD01'
				AND		IPS.ActInd = 'Y'
				AND		IPS.LOCATION_NO IN (SELECT ICLS.OLD_VALUE FROM [$(DWH)].IFS.INTFACE_CONV_LIST_COLS ICLS WHERE ICLS.CONV_LIST_ID = 'FD_STOCK_REPORT' AND ICLS.ActInd = 'Y')
) PS
ON			IP.PART_NO = PS.PART_NO
INNER JOIN	(
				SELECT 
					COL2.CONTRACT
					, COL2.PART_NO
					, ISNULL(SUM(COL2.BUY_QTY_DUE), 0) AS ON_ORDER    
				FROM	[$(DWH)].IFS.CUSTOMER_ORDER_LINE COL2    
				WHERE	COL2.OBJSTATE IN ('Released', 'Reserved', 'Picked')   
				AND		COL2.CUSTOMER_NO NOT IN ('3001SCRAP','3002SCRAP','3005SCR-NB','3006SCRAP','3017SCR-NB','3001SITA','3001SAMPLE','3016SAMPLE')
				AND		COL2.ActInd = 'Y'
				GROUP BY 
					COL2.CONTRACT
					, COL2.PART_NO
) CO
ON			IP.CONTRACT = CO.CONTRACT
AND			IP.PART_NO = CO.PART_NO
INNER JOIN	(
				SELECT 
	POLP.CONTRACT
	, POLP.PART_NO
	, SUM(PL.REVISED_QTY - ISNULL(PR.QTY_ARRIVED * PL.CONV_FACTOR, 0) + ISNULL(QTY_RETURNED * PL.CONV_FACTOR, 0) + ISNULL(RL.QTY_IN_STORE , 0))  AS ON_ORDER
FROM		[$(DWH)].IFS.PURCHASE_ORDER_LINE POLP
LEFT JOIN	(SELECT
				SUM(QTY_ARRIVED) AS QTY_ARRIVED
				, ORDER_NO
				, LINE_NO
				, RELEASE_NO
			FROM		[$(DWH)].IFS.PURCHASE_RECEIPT
			WHERE		STATE != 'Cancelled' 
			AND			ActInd = 'Y'
			GROUP BY
				ORDER_NO
				, LINE_NO
				, RELEASE_NO
) PR
ON			PR.ORDER_NO = POLP.ORDER_NO
AND			PR.LINE_NO = POLP.LINE_NO
AND			PR.RELEASE_NO = POLP.RELEASE_NO

LEFT JOIN	(SELECT 
				SUM(QTY_RETURNED) AS QTY_RETURNED
				, ORDER_NO
				, LINE_NO
				, RELEASE_NO  
			FROM		[$(DWH)].IFS.PURCHASE_RECEIPT_RETURN
			WHERE		RECEIPT_RETURN_TYPE = 'REWORK'
			AND			ActInd = 'Y'
			GROUP BY
				ORDER_NO
				, LINE_NO
				, RELEASE_NO
) PU
ON			PU.ORDER_NO = POLP.ORDER_NO 
AND			PU.LINE_NO = POLP.LINE_NO
AND			PU.RELEASE_NO = POLP.RELEASE_NO
LEFT JOIN	(SELECT
				SUM(RL.QTY_IN_STORE) AS QTY_IN_STORE
				, ORDER_NO
				, LINE_NO
				, RELEASE_NO 
			FROM		[$(DWH)].IFS.RECEIPT_INVENTORY_LOCATION RL
			WHERE		RL.LOCATION_TYPE IN ('QA', 'PALLET QUALITY')
			AND			RL.ActInd = 'Y'
			GROUP BY
				ORDER_NO
				, LINE_NO
				, RELEASE_NO
) RL
ON			RL.ORDER_NO =  POLP.ORDER_NO  
AND			RL.LINE_NO = POLP.LINE_NO
AND			RL.RELEASE_NO = POLP.RELEASE_NO
LEFT JOIN	[$(DWH)].IFS.PURCHASE_ORDER_LINE_ALL PL
ON			PL.ORDER_NO = POLP.ORDER_NO 
AND			PL.LINE_NO = POLP.LINE_NO
AND			PL.RELEASE_NO = POLP.RELEASE_NO
AND			PL.ROWTYPE = 'PurchaseOrderLinePart'
AND			PL.ActInd = 'Y'
WHERE		POLP.ActInd = 'Y'  
GROUP BY 
	POLP.CONTRACT
	, POLP.PART_NO
) PO
ON			IP.CONTRACT = PO.CONTRACT
AND			IP.PART_NO = PO.PART_NO
INNER JOIN	(
				SELECT 
					SO.CONTRACT
					,SO.PART_NO
					, SUM(MP.REVISED_QTY_DUE - MP.QA_SCRAPPED - MP.QTY_REJECTED - MP.QTY_COMPLETE  - MP.OPERATION_SCRAPPED - MP.QTY_QA) AS ON_SO 
				FROM		[$(DWH)].IFS.SHOP_ORD SO
				LEFT JOIN	[$(DWH)].IFS.MANUFACTURED_PART MP
				ON			MP.ORDER_NO = SO.ORDER_NO
				AND			MP.RELEASE_NO = SO.RELEASE_NO 
				AND			MP.SEQUENCE_NO = SO.SEQUENCE_NO 
				AND			MP.PART_NO = SO.PART_NO
				WHERE		SO.STATE IN ('Reserved', 'Released', 'Started')
				AND			SO.ActInd = 'Y'  
				GROUP BY 
					SO.CONTRACT
					, SO.PART_NO
) SO
ON			IP.CONTRACT = SO.CONTRACT
AND			IP.PART_NO = SO.PART_NO
INNER JOIN	(
				SELECT 
					SMA.CONTRACT
					, SMA.PART_NO
					, SUM(SMA.QTY_REQUIRED)		AS QTY_REQUIRED
					, SUM(SMA.QTY_ISSUED)		AS QTY_ISSUED  
					, (SUM(SMA.QTY_REQUIRED) - SUM(SMA.QTY_ISSUED)) AS QTY_REMAINING    
				FROM	[$(DWH)].IFS.SHOP_MATERIAL_ALLOC SMA    
				WHERE	SMA.CONTRACT = 'FD01'   
				AND		SMA.ORDER_NO IN (SELECT SO.ORDER_NO FROM [$(DWH)].IFS.SHOP_ORD SO WHERE SO.STATE IN ('Reserved', 'Released', 'Started') AND SO.ActInd = 'Y')   
				AND		SMA.ORDER_NO IN (SELECT SMA1.ORDER_NO FROM [$(DWH)].IFS.SHOP_MATERIAL_ALLOC SMA1 GROUP BY SMA1.ORDER_NO, SMA1.ActInd HAVING (SUM(SMA1.QTY_REQUIRED)-SUM(SMA1.QTY_ISSUED)) >= 0 AND SMA1.ActInd = 'Y')   
				AND		SMA.ActInd = 'Y'
				GROUP BY 
					SMA.CONTRACT
					, SMA.PART_NO
) CS
ON			IP.CONTRACT = CS.CONTRACT
AND			IP.PART_NO = CS.PART_NO
WHERE		IP.CONTRACT = 'FD01'    
AND			IP.PART_STATUS = 'O'
AND			IP.ActInd = 'Y'
GROUP BY 
	IP.CONTRACT
    , IP.PART_NO
    , IP.DESCRIPTION
    , IP.SECOND_COMMODITY
    , CO.ON_ORDER
    , PO.ON_ORDER
    , SO.ON_SO
    , CS.QTY_REMAINING




/* 
USE DWH;
GO

WITH CTE_QTY_ARRIVED AS (
	SELECT 
		SUM(PR.QTY_ARRIVED)			AS QTY_ARRIVED
	FROM		IFS.PURCHASE_RECEIPT PR
	WHERE		PR.ActInd = 'Y'
	AND			PR.STATE  != 'Cancelled'
	AND			PR.ORDER_NO = 'order_no_'
	AND			PR.LINE_NO = 'line_no_'
	AND			PR.RELEASE_NO =' release_no_'
)
, CTE_QTY_REWORK AS (
	SELECT 
		SUM(RR.QTY_RETURNED)		AS QTY_RETURNED
	FROM		IFS.PURCHASE_RECEIPT_RETURN RR
	WHERE		RR.ActInd = 'Y'
	AND			RR.ORDER_NO = 'ORDER_NO_'
	AND			RR.LINE_NO = 'LINE_NO_'
	AND			RR.RELEASE_NO = 'RELEASE_NO_'
	AND			RR.RECEIPT_RETURN_TYPE = 'REWORK'
)
, CTE_QTY_IN_DOCK AS (
	SELECT 
		SUM(RL.QTY_IN_STORE)		AS QTY_IN_STORE
	FROM		IFS.RECEIPT_INVENTORY_LOCATION RL
	WHERE		RL.ActInd = 'Y'
	AND			RL.ORDER_NO = 'ORDER_NO_'
	AND			RL.LINE_NO = 'LINE_NO_'
	AND			RL.RELEASE_NO = 'RELEASE_NO_'
	AND			RL.LOCATION_TYPE IN ('ARRIVAL', 'PALLET ARRIVAL','ARRIVAL', 'PALLET ARRIVAL')
)
, CTE_ORD_LINE_PART AS (
	SELECT 
		PL.CONV_FACTOR
		, PL.REVISED_QTY
	FROM		IFS.PURCHASE_ORDER_LINE PL 
	WHERE		PL.ActInd = 'Y'
	--AND			PL.ROWTYPE = 'PurchaseOrderLinePart'
	AND			PL.STATE NOT IN ( 'Closed', 'Cancelled')
	AND			PL.ORDER_NO = 'ORDER_NO_'
	AND			PL.LINE_NO = 'LINE_NO_'
	AND			PL.RELEASE_NO = 'RELEASE_NO_'
)

SELECT
  --due_in_stores_ := revised_qty_ - NVL(qty_arrived_ * conv_factor_, 0) + NVL(qty_rework_ * conv_factor_, 0) + NVL(qty_in_dock_ , 0);
  OP.REVISED_QTY - ISNULL(QA.QTY_ARRIVED * OP.CONV_FACTOR,0) + ISNULL(QR.QTY_RETURNED * OP.CONV_FACTOR,0) + ISNULL(QD.QTY_IN_STORE,0)	AS DUE_IN_STORES
FROM		CTE_QTY_ARRIVED QA
LEFT JOIN	CTE_QTY_REWORK QR
ON			1=1
LEFT JOIN	CTE_QTY_IN_DOCK QD
ON			1=1
LEFT JOIN	CTE_ORD_LINE_PART OP
ON			1=1
*/

/*
   IF Purchase_Order_Line_API.Get_Objstate(order_no_, line_no_, release_no_) IN ( 'Closed', 'Cancelled') THEN RETURN 0; END IF;
   pur_ord_line_part_rec_ := Purchase_Order_Line_Part_API.Get(order_no_, line_no_, release_no_);
   due_in_stores_ := Get_Due_In_Stores1(order_no_,line_no_,release_no_,pur_ord_line_part_rec_.revised_qty,pur_ord_line_part_rec_.conv_factor);
   RETURN due_in_stores_;
   IF Purchase_Order_Line_API.Get_Objstate(order_no_, line_no_, release_no_) IN ( 'Closed', 'Cancelled') THEN RETURN 0; END IF;
   
Purchase_Order_Line_Util_API.Get_Due_In_Stores1
   qty_arrived_ := Purchase_Order_Line_API.Get_Qty_Arrived(order_no_, line_no_, release_no_);
   qty_rework_ :=  Purchase_Order_Line_API.Get_Qty_Returned_Rework(order_no_, line_no_, release_no_);
   qty_in_dock_ := Receipt_Inventory_Location_API.Get_Qty_In_Qc(order_no_, line_no_, release_no_) + Receipt_Inventory_Location_API.Get_Qty_At_Dock(order_no_, line_no_, release_no_);
   due_in_stores_ := revised_qty_ - NVL(qty_arrived_ * conv_factor_, 0) + NVL(qty_rework_ * conv_factor_, 0) + NVL(qty_in_dock_ , 0);
   IF due_in_stores_ < 0 THEN RETURN 0; ELSE RETURN NVL(due_in_stores_, 0); END IF;
 
Purchase_Order_Line_Part_API.Get
	SELECT buy_unit_meas, contract, currency_code, demand_operation_no, demand_order_code, demand_order_no, demand_order_type, demand_release, demand_sequence_no,eng_chg_level, inspection_code, note_id, order_code, part_no, pre_accounting_id, price_unit_meas,qc_code, unit_meas, additional_cost_amount, buy_qty_due, buy_unit_price, close_code,conv_factor, currency_rate, demand_code, description, discount, fbuy_unit_price,original_qty,planned_delivery_date, planned_receipt_date, price_conv_factor, promised_delivery_date, qty_on_order,revised_qty, sample_percent, sample_qty, wanted_delivery_date, ord_conf_reminder, delivery_reminder,receive_case, process_type, purchase_payment_type, project_id, activity_seq,automatic_invoice, manufacturer_id, manufacturer_part_no, delivery_flag, part_revision, currency_type, assortment,technical_coordinator_id,configuration_id,job_id,warranty_id,purchase_modified,taxable, tax_exempt, tax_amount, tax_ship_address,serial_no, service_type, lot_batch_no, condition_code, original_part_no, defect_part_key_ref, part_ownership, owning_customer_no, core_deposit, exchange_item, qty_scrapped_supplier,addr_flag, default_addr_flag, destination_id, ship_via_code, delivery_terms, company, address_id, forwarder_id, pay_tax, internal_dest_desc, purchase_site, freeze_flag, invoicing_supplier,intrastat_exempt, fee_code, cancel_reason, inventory_part, over_delivery_tolerance, del_terms_location, kanban_receipt_location, internal_control_time, weight_net, volume_net FROM  PURCHASE_ORDER_LINE_TAB WHERE rowtype = 'PurchaseOrderLinePart' AND order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_
	  
Purchase_Order_Line_API.Get_Objstate
	SELECT rowstate FROM PURCHASE_ORDER_LINE_TAB WHERE order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_
		 
Purchase_Order_Line_API.Get_Qty_Arrived
	SELECT SUM(qty_arrived) FROM purchase_receipt_tab WHERE rowstate  != 'Cancelled' AND order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_

Purchase_Order_Line_API.Get_Qty_Returned_Rework
	SELECT SUM(qty_returned) FROM purchase_receipt_return_tab WHERE order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_ AND receipt_return_type = 'REWORK'
	
Receipt_Inventory_Location_API.Get_Qty_In_Qc
	SELECT SUM(qty_in_store) FROM RECEIPT_INVENTORY_LOCATION_TAB WHERE  order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_ AND location_type IN ('QA', 'PALLET QUALITY')
	  
Receipt_Inventory_Location_API.Get_Qty_At_Dock
	SELECT SUM(qty_in_store) FROM RECEIPT_INVENTORY_LOCATION_TAB WHERE order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_ AND location_type IN ('ARRIVAL', 'PALLET ARRIVAL')

SHOP_ORDER_INT_API.GET_REMAINING_QTY
Manufactured_Part_API.Get_Remaining_Qty__
	SELECT revised_qty_due, qa_scrapped, qty_rejected, qty_complete, operation_scrapped, qty_qa FROM MANUFACTURED_PART_TAB WHERE order_no = order_no_ AND release_no = release_no_ AND sequence_no = sequence_no_ AND part_no = part_no_
	FETCH getrec INTO qty_due_, qty_scrapped_, qty_rejected_, qty_complete_, qty_op_scrap_, qty_qa_;
	CLOSE getrec;
	qty_ := qty_due_ - qty_scrapped_ - qty_rejected_ - qty_complete_  - qty_op_scrap_ - qty_qa_;
	IF qty_ < 0 THEN qty_ := 0; END IF;
	RETURN (nvl(qty_, 0))
	*/

	--IF (SELECT rowstate FROM PURCHASE_ORDER_LINE_TAB WHERE order_no = order_no_ AND line_no = line_no_ AND release_no = release_no_) IN ( 'Closed', 'Cancelled') THEN RETURN 0; END IF