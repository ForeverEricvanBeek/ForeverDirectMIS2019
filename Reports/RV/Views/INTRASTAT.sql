﻿
CREATE VIEW RV.INTRASTAT
AS
WITH CTE_CUSTOMER_ORDER_INV_ITEM_JOIN AS (
	SELECT 
		II.COMPANY											AS COMPANY
		, II.INVOICE_ID										AS INVOICE_ID
		, II.ITEM_ID										AS ITEM_ID
		, NULL												AS PARTY
		, II.PARTY_TYPE										AS PARTY_TYPE
		, II.[IDENTITY]										AS [IDENTITY]
		, II.DELIV_TYPE_ID									AS DELIV_TYPE_ID
		, II.VAT_CODE										AS VAT_CODE
		, II.VAT_RATE										AS VAT_RATE
		, II.VAT_CURR_AMOUNT								AS VAT_CURR_AMOUNT
		, II.NET_CURR_AMOUNT								AS NET_CURR_AMOUNT
		, II.NET_CURR_AMOUNT + II.VAT_CURR_AMOUNT			AS GROSS_CURR_AMOUNT
		, II.NET_DOM_AMOUNT									AS NET_DOM_AMOUNT
		, II.VAT_DOM_AMOUNT									AS VAT_DOM_AMOUNT
		, II.REFERENCE										AS REFERENCE
		, SUBSTRING(II.C1,1,12)								AS ORDER_NO
		, SUBSTRING(II.C2,1,4)								AS LINE_NO
		, SUBSTRING(II.C3,1,4)								AS RELEASE_NO
		, II.N1												AS LINE_ITEM_NO
		, SUBSTRING(II.C4,1,4)								AS POS
		, SUBSTRING(II.C10,1,5)								AS CONTRACT
		, SUBSTRING(II.C5,1,25)								AS CATALOG_NO
		, II.C6												AS DESCRIPTION
		, CASE IV.INVOICE_TYPE
			WHEN 'CUSTORDCRE' THEN -(II.N2)
			WHEN 'CUSTCOLCRE' THEN -(II.N2)
			WHEN 'SELFBILLCRE' THEN -(II.N2)
			ELSE II.N2
		END													AS INVOICED_QTY
		, SUBSTRING(II.C7,1,10)								AS SALE_UM
		, II.N3												AS PRICE_CONV
		, SUBSTRING(II.C8,1,10)								AS PRICE_UM
		, II.N4												AS SALE_UNIT_PRICE
		, II.N5												AS DISCOUNT
		, II.N6												AS ORDER_DISCOUNT
		, SUBSTRING(II.C9,1,50)								AS CUSTOMER_PO_NO
		, II.N7												AS CHARGE_SEQ_NO
		, SUBSTRING(II.C11,1,25)							AS CHARGE_GROUP
		, II.N8												AS STAGE
		, II.N9												AS RMA_NO
		, II.N10											AS RMA_LINE_NO
		, II.N11											AS RMA_CHARGE_NO
		, SUBSTRING(II.C12,1,50)							AS CONFIGURATION_ID
		, IV.INVOICE_NO										AS INVOICE_NO
		, IV.INVOICE_DATE									AS INVOICE_DATE
		, IV.INVOICE_TYPE									AS INVOICE_TYPE
		, II.C13											AS DELIVERY_CUSTOMER
		, IV.CURR_RATE										AS CURR_RATE
		, IV.DIV_FACTOR										AS DIV_FACTOR
		, IV.PRICE_ADJUSTMENT								AS PRICE_ADJUSTMENT
		, IV.SERIES_ID										AS SERIES_ID
		, /*SALES_PART_API.GET_CATALOG_GROUP(II.C10, SUBSTRING(II.C5,1,25))*/ NULL AS CATALOG_GROUP
		, II.OBJID											AS OBJID
		, II.OBJVERSION										AS OBJVERSION
	FROM		[$(DWH)].IFS.INVOICE_ITEM II
	INNER JOIN	[$(DWH)].IFS.INVOICE IV
	ON			IV.COMPANY = II.COMPANY
	AND			IV.INVOICE_ID = II.INVOICE_ID
	AND			IV.CREATOR = 'CUSTOMER_ORDER_INV_HEAD_API'
	AND			IV.PARTY_TYPE_DB = 'CUSTOMER'
	AND			IV.ADV_INV = 'FALSE'
	INNER JOIN	[$(DWH)].IFS.USER_ALLOWED_SITE UASP
	ON			UASP.CONTRACT = II.C10
	INNER JOIN	[$(DWH)].IFS.COMPANY_INVOICE_INFO CI
	ON			((CI.DEF_CO_PREPAY_DEB_INV_TYPE != IV.INVOICE_TYPE
	AND			CI.DEF_CO_PREPAY_CRE_INV_TYPE != IV.INVOICE_TYPE)
	OR			(CI.DEF_CO_PREPAY_DEB_INV_TYPE IS NULL OR CI.DEF_CO_PREPAY_DEB_INV_TYPE IS NULL))
	AND			CI.COMPANY = IV.COMPANY
	WHERE		II.CREATOR = 'CUSTOMER_ORDER_INV_ITEM_API'
)

SELECT 
	IL.INTRASTAT_ID
	, IL.TRANSACTION_ID
	, IL.[TRANSACTION]
	, IL.ORDER_TYPE
	, IL.CONTRACT
	, PS.COMPONENT_PART
	, IC.DESCRIPTION
	, IL.ORDER_REF1
	, CJ.INVOICED_QTY				AS QUANTITY
	, PS.PRINT_UNIT
	, IL.DATE_APPLIED
	, PC.WEIGHT_NET
	, IC.CUSTOMS_STAT_NO
	, IL.INTRASTAT_ALT_QTY
	, IL.INTRASTAT_ALT_UNIT_MEAS
	, IL.INTRASTAT_DIRECTION
	, IC.COUNTRY_OF_ORIGIN
	, IL.INTRASTAT_ORIGIN
	, IL.OPPOSITE_COUNTRY
	, IL.OPPONENT_NUMBER
	, IL.OPPONENT_NAME
	, IL.ORDER_UNIT_PRICE
	, IL.UNIT_ADD_COST_AMOUNT
	, IL.UNIT_CHARGE_AMOUNT
	, IL.MODE_OF_TRANSPORT
	, IL.INVOICE_SERIE
	, IL.INVOICE_NUMBER
	, CJ.SALE_UNIT_PRICE
	, CJ.NET_DOM_AMOUNT				AS INVOICED_AMOUNT
	, IL.COUNTRY_CODE
FROM		[$(DWH)].IFS.INTRASTAT_LINE IL 
INNER JOIN	[$(DWH)].IFS.INVENTORY_PART IP 
ON			IP.CONTRACT = IL.CONTRACT 
AND			IP.PART_NO = IL.PART_NO 
AND			IP.PART_PRODUCT_FAMILY  = '9'
INNER JOIN	[$(DWH)].IFS.MANUF_STRUCTURE PS 
ON			PS.PART_NO = IL.PART_NO
AND			PS.ROWTYPE like '%ProdStructure'
AND			PS.ALTERNATIVE_NO  = 'VAT'
INNER JOIN	[$(DWH)].IFS.INVENTORY_PART IC 
ON			IC.CONTRACT = PS.CONTRACT
AND			IC.PART_NO  = PS.COMPONENT_PART 
INNER JOIN	[$(DWH)].IFS.PART_CATALOG PC 
ON			PC.PART_NO = PS.COMPONENT_PART 
INNER JOIN	CTE_CUSTOMER_ORDER_INV_ITEM_JOIN CJ 
ON			CJ.ORDER_NO = IL.ORDER_REF1
AND			CJ.LINE_NO = IL.ORDER_REF2
AND			CJ.RELEASE_NO = IL.ORDER_REF3
AND			CJ.CATALOG_NO = PS.COMPONENT_PART
WHERE		IL.INTRASTAT_ID = (SELECT MAX(INTRASTAT_ID) FROM [$(DWH)].IFS.INTRASTAT)

UNION ALL

SELECT 
	IL.INTRASTAT_ID
	, IL.TRANSACTION_ID
	, IL.[TRANSACTION]
	, IL.ORDER_TYPE
	, IL.CONTRACT
	, IL.PART_NO
	, IL.PART_DESCRIPTION
	, IL.ORDER_REF1
	, IL.QUANTITY
	, IL.UNIT_MEAS
	, IL.DATE_APPLIED
	, IL.NET_UNIT_WEIGHT
	, IL.CUSTOMS_STAT_NO
	, IL.INTRASTAT_ALT_QTY
	, IL.INTRASTAT_ALT_UNIT_MEAS
	, IL.INTRASTAT_DIRECTION
	, IL.COUNTRY_OF_ORIGIN
	, IL.INTRASTAT_ORIGIN
	, IL.OPPOSITE_COUNTRY
	, IL.OPPONENT_NUMBER
	, IL.OPPONENT_NAME
	, IL.ORDER_UNIT_PRICE
	, IL.UNIT_ADD_COST_AMOUNT
	, IL.UNIT_CHARGE_AMOUNT
	, IL.MODE_OF_TRANSPORT
	, IL.INVOICE_SERIE
	, IL.INVOICE_NUMBER
	, IL.INVOICED_UNIT_PRICE
	, IL.QUANTITY * IL.INVOICED_UNIT_PRICE AS INVOICED_AMOUNT
	, IL.COUNTRY_CODE
FROM		[$(DWH)].IFS.INTRASTAT_LINE IL 
INNER JOIN	[$(DWH)].IFS.INVENTORY_PART IP 
ON			IP.CONTRACT = IL.CONTRACT 
AND			IP.PART_NO = IL.PART_NO
AND			IP.PART_PRODUCT_FAMILY <> '9'
WHERE		IL.INTRASTAT_ID = (SELECT MAX(INTRASTAT_ID) FROM [$(DWH)].IFS.INTRASTAT)