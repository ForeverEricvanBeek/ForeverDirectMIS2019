









CREATE VIEW [FDV].[VW_D_Complaint_1]
AS
SELECT        

	   CAST(CO.Complaint_ID AS NVARCHAR(10))		AS Complaint_ID
     , CAST(CO.Complaint_Datum AS datetime2)		AS Complaint_Datum
     , ISNULL(CO.Complaint_Pos, N'-1')			    AS Complaint_Pos		
	, CO.Complaint_Incomplete						AS Complaint_Incomplete
	, CO.Complaint_Checked						    AS Complaint_Checked
	--, CASE WHEN CO.Complaint_CreatedDate > '20160901' THEN 1 ELSE 0 END AS Complaint_New
    , ISNULL(CO.Complaint_ItemOrdered,'-1')			AS Complaint_Allocated_Item
	, ISNULL(CO.Complaint_ItemReceived,'-1')		AS Complaint_Picked_Item
	, ISNULL(CO.Complaint_ItemOrderedReported, '')	AS Complaint_Allocated_Item_Reported
	, ISNULL(CO.Complaint_ItemReceivedReported, '') AS Complaint_Picked_Item_Reported
	, ISNULL(CO.Complaint_BatchOrdered, '-1')		AS Complaint_Allocated_Batch
	, ISNULL(CO.Complaint_QuantityOrdered,'')		AS Complaint_Allocated_Qty
	, ISNULL(CO.Complaint_QuantityReceived, '')		AS Complaint_Qty
	, CO.Complaint_Complaint						AS Complaint_Error
	, CO.Complaint_Details							AS Complaint_Comment
	, CO.Complaint_CreditNote						AS Complaint_Credit_Note
	, CO.Complaint_ServiceOrder						AS Complaint_Service_Order
	, CO.Complaint_CarrierDamage					AS Complaint_Carrier_Damage
	, CO.Complaint_CustomerServiceOperator		AS Complaint_Customer_Service_Operator
	, CO.Complaint_Conterminator				AS Complaint_Conterminator     
    , [Complaint_Number]						AS Complaint_Number
    , Complaint_PosOrig							AS Complaint_Pos_Origine
    , Complaint_CreatedDate						AS Complaint_Createddate
    , Complaint_CreatedBy						AS Complaint_CreatedBy



 FROM [WEB].[Complaint] as CO
	 WHERE ActInd = 'Y'
			AND IsDeleted = 'N'

UNION ALL

SELECT        '-1', NULL, NULL,NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL