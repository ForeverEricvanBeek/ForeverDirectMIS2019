



CREATE VIEW [FD2].[VW_D_Complaint]
AS
       
SELECT DISTINCT
	'U_' + CAST(CO.Complaint_ID AS NVARCHAR(10))		AS Complaint_ID
	, CAST(CO.Complaint_Datum AS datetime2)				AS Complaint_Date
	, CO.Complaint_Incomplete							AS Complaint_Incomplete
	, CO.Complaint_Checked								AS Complaint_Checked
	, ISNULL(CO.Complaint_ItemOrdered,'-1')				AS Complaint_Allocated_Item
	, ISNULL(CO.Complaint_ItemReceived,'-1')			AS Complaint_Picked_Item
	, ISNULL(CO.Complaint_ItemOrderedReported, '')		AS Complaint_Allocated_Item_Reported
	, ISNULL(CO.Complaint_ItemReceivedReported, '')		AS Complaint_Picked_Item_Reported
	, ISNULL(CO.Complaint_BatchOrdered, '-1')			AS Complaint_Allocated_Batch
	, ISNULL(CO.Complaint_QuantityOrdered,'')			AS Complaint_Allocated_Qty
	, ISNULL(CO.Complaint_QuantityReceived, '')			AS Complaint_Qty
	, CO.Complaint_Complaint							AS Complaint_Error
	, CO.Complaint_Details								AS Complaint_Comments
	, CO.Complaint_CreditNote							AS Complaint_Credit_Note
	, CO.Complaint_ServiceOrder							AS Complaint_Service_Order
	, CO.Complaint_CarrierDamage						AS Complaint_Carrier_Damage
	, CO.Complaint_CustomerServiceOperator				AS Complaint_Customer_Service_Operator
	, CO.Complaint_Conterminator						AS Complaint_Conterminator
	, CO.Complaint_PosOrig								AS Complaint_Pos_Reported
FROM		WEB.Complaint CO
WHERE		CO.ActInd = 'Y'
--AND			CO.Complaint_CreatedDate >= DATEADD(YEAR,-2,GETDATE())


UNION ALL

SELECT '-1','99991231',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL