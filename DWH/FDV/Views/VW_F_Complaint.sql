



CREATE VIEW [FDV].[VW_F_Complaint]
AS

SELECT 
                     
                     
				CONCAT( 'U_',CP.Complaint_ID )				AS [Complaint_ID]
			,	CONVERT(CHAR, CP.Complaint_Datum, 112)		AS [DateKey]
            ,   CP.Complaint_CreatedDate					AS [Complaint Create Date]
            ,	OD.D_Order_Skey								AS [Order_Skey]	 
			,   SK1.D_SKU_Skey								AS [Ordered_Sku_Skey]
            ,   SK2.D_SKU_Skey							    AS [Received_Sku_Skey]
            ,   LT.D_Lot_Skey								AS [Lot_Skey]
            ,	CY.D_Country_Skey							AS [D_Country_Skey]			  
            ,   CASE WHEN CP.Complaint_ItemOrdered IS NOT NULL AND Complaint_ItemOrdered <> '-1' AND Complaint_QuantityOrdered IS NUll THEN '*' 
                      WHEN Complaint_ItemOrdered IS NULL AND Complaint_QuantityOrdered IS NOT NULL THEN '*' ELSE NULL END [Item_Orderd_Flag]
			,	CASE WHEN ROW_NUMBER() OVER(PARTITION BY CP.Complaint_Order,  CP.Complaint_Complaint  ORDER BY CP.Complaint_Order, CP.Complaint_Complaint) = 1 and CP.Complaint_Order is not null
				THEN 1 ELSE 0 END AS [#Complaints with Order Number]
			,   CASE WHEN ROW_NUMBER() OVER(PARTITION BY CP.Complaint_Pos, CP.Complaint_Complaint ORDER BY  CP.Complaint_Pos, CP.Complaint_Complaint) = 1 and CP.Complaint_Order is null and CP.Complaint_Pos is not null
              THEN 1 ELSE 0 END AS [#Complaints_with_PosNumber]
			, CASE  WHEN CP.Complaint_Order is null and CP.Complaint_Pos is null
THEN 1 ELSE 0 END AS [#No Complaint information]
FROM [WEB].[Complaint] CP
LEFT JOIN [$(ForeverData01)].DM.D_SKU SK1 
       ON SK1.SKU_Name = CP.Complaint_ItemOrdered
       AND CP.IsDeleted = 'N'
       AND CP.Complaint_Checked = 'Y'
LEFT JOIN [$(ForeverData01)].DM.D_SKU SK2
       ON SK2.SKU_Name = CP.Complaint_ItemReceived
LEFT JOIN [$(ForeverData01)].DM.D_Lot LT
       ON CP.Complaint_BatchOrdered = LT.Lot_Code
LEFT JOIN [$(ForeverData01)].DM.D_Order OD
       ON OD.Order_ID = LTRIM(RTRIM(CP.Complaint_Order)) 
LEFT JOIN [$(ForeverData01)].DM.D_FLP_Customers CC
       ON CP.Complaint_Facility = CC.Customer_ID
LEFT JOIN [$(ForeverData01)].DM.D_Country CY
	on CY.Country_Code = CASE WHEN OD.Order_Country_Code IS NULL THEN CC.Country_Code ELSE OD.Order_Country_Code end
WHERE CP.ActInd = 'Y'