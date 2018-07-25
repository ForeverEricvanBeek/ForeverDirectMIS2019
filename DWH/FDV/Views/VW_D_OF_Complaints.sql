
CREATE VIEW FDV.VW_D_OF_Complaints
AS
SELECT DISTINCT
	'U_' + CAST(CO.ID AS NVARCHAR(10))	AS OF_Complaints_ID
	, CAST(CO.Datum AS datetime2)		AS OF_Complaints_Date
	, ISNULL(CO.Order_Nr, N'-1')		AS OF_Complaints_Order_ID							-- Remove use Fact 
	, ISNULL(CO.Pos_Nr, N'-1')			AS OF_Complaints_Pos_ID								-- Remove use Fact
	, ISNULL(CO.Facility_ID, N'-1')		AS OF_Complaints_Facility							-- Remove use Fact
	, CO.Incomplete						AS OF_Complaints_Incomplete
	, CO.Checked						AS OF_Complaints_Checked
	, CASE WHEN CO.Created_Date > '20160901' THEN 1 ELSE 0 END AS OF_Complaints_New
	, ISNULL(CO.Olpn_Nr,'-1')			AS OF_Complaints_OLPN_ID							 -- Remove use Fact
	, ISNULL(CO.Item_Ordered,'-1')		AS OF_Complaints_Allocated_Item
	, ISNULL(CO.Item_Received,'-1')		AS OF_Complaints_Picked_Item
	, ISNULL(CO.Item_Ordered_Reported, '')	AS OF_Complaints_Allocated_Item_Reported
	, ISNULL(CO.Item_Received_Reported, '') AS OF_Complaints_Picked_Item_Reported
	, ISNULL(CO.Batch_Ordered, '-1')	AS OF_Complaints_Allocated_Batch
	, ISNULL(CO.Quantity_Ordered,'')	AS OF_Complaints_Allocated_Qty
	, ISNULL(CO.Quantity_Received, '')	AS OF_Complaints_Qty
	, N'-1'								AS OF_Complaints_Picker_ID
	, CAST(NULL AS NVARCHAR(350))		AS OF_Complaints_Picker_Name
	, CAST(NULL AS NVARCHAR(350))		AS OF_Complaints_QA_operator
	, CO.Complaint						AS OF_Complaints_Error
	, N'Complaint'						AS OF_Complaints_Error_Type
	, CO.Complaint_Details				AS OF_Complaints_Comments
	, CO.Credit_Note					AS OF_Complaints_Credit_Note
	, CO.Service_order					AS OF_Complaints_Service_Order
	, CO.CarrierDamage					AS OF_Complaints_Carrier_Damage
	, CO.CustomerServiceOperator		AS OF_Complaints_Customer_Service_Operator
	, CO.Conterminator					AS OF_Complaints_Conterminator
FROM		WEB.Complaints				AS CO
WHERE		CO.ActInd = 'Y'
AND			(CO.Checked = 'Y' OR CO.Created_Date <= '20160901')
-- Above is because old files are not checked but need to be included in the datamart.
-- Try to find batch and picker ID trhough activity tracking
UNION ALL

SELECT '-1','99991231','-1','-1','-1',NULL,NULL,1,'-1','-1','-1',NULL,NULL,'-1',NULL,NULL,'-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL