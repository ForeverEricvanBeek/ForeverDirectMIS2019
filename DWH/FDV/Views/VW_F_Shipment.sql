












CREATE VIEW [FDV].[VW_F_Shipment]
AS
-- Get first try to deliver date, if not delivered in one try.
with cte_FA as
(
SELECT EVE.SHIPMENT_ID, MIN(EVE.SHIPMENT_EVENT_TS_UTC) as First_Attempt_Date
  FROM 
		 [DWH].[TPX7].[VW_SHIPMENT_EVENT] EVE          
                       WHERE EVE.ActInd = 'Y'
                 
              AND SHIPMENT_EVENT_CODE IN ( '728', '730' , '771' , '772' ) 
			GROUP BY EVE.SHIPMENT_ID, EVE.SHIPMENT_EVENT_CODE
)


SELECT        

		  cast(EOI.Order_Create_Date	 as date)	AS DateKey	
		, ISNULL(EOI.Order_Shipment_ID, '-1')				AS Shipment_ID
		, ISNULL(rtrim(EOI.Order_IFS_ID),'-1')					as Order_IFS_ID
		, ISNULL(rtrim(EOI.TC_Order_ID), '-1')					AS Order_ID
		, ISNULL(rtrim(TS.SHIPPER_SHIPMENT_REF), '-1')			as OLPN_ID	
		, ISNULL(TS.SELLING_RATE_CODE, '-1' )				as Rate_Code
		, ISNULL(TS.FORWARDER_CODE, '-1')					AS Forwarder_Code
		, ISNULL(TS.FORWARDER_NAME, '-1' )					as Forwarder_Name
		, ISNULL(TS.FORWARDER_REFERENCE, '-1')			as Forwarder_Reference
		, ISNULL(TS.SERVICE_LEVEL_CODE, '-1')				as Service_Level_Code
		, ISNULL(TS.SERVICE_CODE, '-1')					as Forwarder_Service_Code
		, ISNULL(TS.STATUS, '-1')							as Status
		, ISNULL(TS.ONTIME, -1)							as TPX_Ontime
		, ISNULL(TS.DELIVERED, -1)						as TPX_Delivered
		, ISNULL(TS.INTRANSIT, -1)						as TPX_iNTRANSIT			
		, ISNULL(TS.DOSSIER_NUMBER, '-1')					as TPX_Dossier_Number
		, TS.POD_SIGNED_BY									as Signature_Delivery	
		, INCOTERM_CODE										as Incoterm		
		, TS.EXPECTED_DY_TS							as Expected_Deliver_Date
		, FA.First_Attempt_Date					as First_Attempt_Date
		--If delivery took more then one try, we pick the first attempt date.
		, case when FA.First_Attempt_Date IS NULL then  TS.ACTUAL_DY_TS else FA.First_Attempt_Date END AS First_Customer_Contact
		, TS.ACTUAL_DY_TS							as Actual_Deliver_Date
		, TS.REQUESTED_DY_TS						as Requested_Deliver_Date
		, EOI.Order_Create_Date 					as Manh_Order_Create_Date
		, EOI.Order_Planned_Ship_Date				as Manh_Planned_Ship_Date	
		, ISNULL(EOI.Order_Manh_Order_Lines , -1)		AS Manh_Order_Lines
		, ISNULL(EOI.Order_Num_Of_Parcels , -1)			AS Manh_Num_Of_Parcels
		, ISNULL(EOI.Order_IFS_Order_Lines , -1 )			AS IFS_Order_Lines
FROM	
	[DWH].[EXTRA].[ORDERS_INFO] EOI
 INNER JOIN	TPX7.VW_SHIPMENT TS 
ON  EOI.TC_Order_ID = LTRIM(RTRIM(TS.CONSIGNEE_REFERENCE))
	LEFT JOIN cte_FA FA
              ON TS.SHIPMENT_ID = FA.SHIPMENT_ID
	WHERE EOI.ActInd = 'Y' 
		AND TS.ActInd = 'Y' 
		AND  YEAR(EOI.Order_Create_Date) >=  YEAR(GETDATE())-2