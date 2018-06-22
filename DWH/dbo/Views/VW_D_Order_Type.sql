
CREATE VIEW VW_D_Order_Type
AS

SELECT        'OF' AS Order_Type_Code, 'Order Fulfillment' AS Order_Type_Description
UNION ALL
SELECT        'BK' AS Order_Type_Code, 'Bulk' AS Order_Type_Description
UNION ALL
SELECT        'DS' AS Order_Type_Code, 'Scrap' AS Order_Type_Description
UNION ALL
SELECT        'FD01' AS Order_Type_Code, 'Sample or Scrap' AS Order_Type_Description
UNION ALL
SELECT        'Unknown' AS Order_Type_Code, 'Unknown' AS Order_Type_Description
GO



GO


