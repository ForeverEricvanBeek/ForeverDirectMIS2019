


CREATE VIEW [DM2].[VW_D_OF_Complaints]
AS
SELECT DISTINCT
	'U_' + CAST(CO.Complaint_ID AS NVARCHAR(10))	AS OF_Complaints_ID
	, CAST(CO.Complaint_Datum AS datetime2)		AS OF_Complaints_Date
	, ISNULL(CO.Complaint_Order, N'-1')		AS OF_Complaints_Order_ID							-- Remove use Fact 
	, ISNULL(CO.Complaint_Pos, N'-1')			AS OF_Complaints_Pos_ID								-- Remove use Fact
	, ISNULL(CO.Complaint_Facility, N'-1')		AS OF_Complaints_Facility							-- Remove use Fact
	, CO.Complaint_Incomplete						AS OF_Complaints_Incomplete
	, CO.Complaint_Checked						AS OF_Complaints_Checked
	, CASE WHEN CO.Complaint_CreatedDate > '20160901' THEN 1 ELSE 0 END AS OF_Complaints_New
	, ISNULL(CO.Complaint_Olpn,'-1')			AS OF_Complaints_OLPN_ID							 -- Remove use Fact
	, ISNULL(CO.Complaint_ItemOrdered,'-1')		AS OF_Complaints_Allocated_Item
	, ISNULL(CO.Complaint_ItemReceived,'-1')		AS OF_Complaints_Picked_Item
	, ISNULL(CO.Complaint_ItemOrderedReported, '')	AS OF_Complaints_Allocated_Item_Reported
	, ISNULL(CO.Complaint_ItemReceivedReported, '') AS OF_Complaints_Picked_Item_Reported
	, ISNULL(CO.Complaint_BatchOrdered, '-1')	AS OF_Complaints_Allocated_Batch
	, ISNULL(CO.Complaint_QuantityOrdered,'')	AS OF_Complaints_Allocated_Qty
	, ISNULL(CO.Complaint_QuantityReceived, '')	AS OF_Complaints_Qty
	, N'-1'								AS OF_Complaints_Picker_ID
	, CAST(NULL AS NVARCHAR(350))		AS OF_Complaints_Picker_Name
	, CAST(NULL AS NVARCHAR(350))		AS OF_Complaints_QA_operator
	, CO.Complaint_Complaint						AS OF_Complaints_Error
	, N'Complaint'						AS OF_Complaints_Error_Type
	, CO.Complaint_Details				AS OF_Complaints_Comments
	, CO.Complaint_CreditNote					AS OF_Complaints_Credit_Note
	, CO.Complaint_ServiceOrder					AS OF_Complaints_Service_Order
	, CO.Complaint_CarrierDamage					AS OF_Complaints_Carrier_Damage
	, CO.Complaint_CustomerServiceOperator		AS OF_Complaints_Customer_Service_Operator
	, CO.Complaint_Conterminator					AS OF_Complaints_Conterminator
FROM		WEB.Complaint				AS CO
WHERE		CO.ActInd = 'Y'
AND			(CO.Complaint_Checked = 'Y' OR CO.Complaint_CreatedDate <= '20160901')
AND			CO.Eff_Date >= GETDATE() -2
AND			CO.End_Date >= GETDATE() -2
-- Above is because old files are not checked but need to be included in the datamart.
-- Try to find batch and picker ID trhough activity tracking
UNION ALL

SELECT '-1','99991231','-1','-1','-1',NULL,NULL,1,'-1','-1','-1',NULL,NULL,'-1',NULL,NULL,'-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL