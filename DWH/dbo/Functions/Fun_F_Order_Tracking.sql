
CREATE FUNCTION [dbo].[Fun_F_Order_Tracking]()
RETURNS @retDate TABLE 
(
    -- Columns returned by the function
	      [Date]		int NOT NULL
		, [OLPN_ID]  nvarchar(50) NULL
		, [Order_ID] nvarchar(50) NOT NULL
		, [Shipment_ID] nvarchar(50)  NULL
		, [Transporter_Code] nvarchar(10)  NULL
		, [Transporter_Via_Code] nvarchar(4)  NULL
		, [Number_Of_Orders_Delivered] int NULL
		, [Number_Of_Parcels_Delivered] int NULL
        , [Number_Of_New_Orders] int NULL
)
AS 

BEGIN
/*---------------------------------------------------------------------------*/
/* Loads New Orders                                        */
/*---------------------------------------------------------------------------*/


INSERT  INTO @retDate
					(
                      [Date]
                    , [Order_ID]
                    , [Shipment_ID]
                    , [Transporter_Code]
                    , [Transporter_Via_Code]
					, [Number_Of_New_Orders]
                    )
SELECT		  CONVERT(CHAR,OD.CREATED_DTTM,112)
			,  OD.TC_ORDER_ID					
			, OD.TC_SHIPMENT_ID					
			, SH.DSG_CARRIER_CODE				
			, OD.DSG_SHIP_VIA					
			, 1									
FROM		MANH.ORDERS OD
LEFT JOIN	MANH.SHIPMENT SH
ON			OD.TC_SHIPMENT_ID = SH.TC_SHIPMENT_ID
AND			SH.ActInd='Y'
WHERE		OD.ActInd='Y'         

/*---------------------------------------------------------------------------*/
/* Loads Parcels Delivered													 */
/*---------------------------------------------------------------------------*/


INSERT  INTO @retDate
					(
                      [Date]
					, [OLPN_ID]
                    , [Order_ID]
                    , [Shipment_ID]
                    , [Transporter_Code]
                    , [Transporter_Via_Code]
					, [Number_Of_Parcels_Delivered]
                    )
SELECT  			  CONVERT(CHAR,FD.STATUS_DATE,112)	
                    , LP.TC_LPN_ID						
					, LP.TC_ORDER_ID					
					, OD.TC_SHIPMENT_ID					
					, SH.DSG_CARRIER_CODE				
					, OD.DSG_SHIP_VIA					
					, 1									
FROM			dbo.VW_T_LPN AS LP 
JOIN			MANH.ORDERS AS OD 
ON				OD.TC_ORDER_ID = LP.TC_ORDER_ID 
AND				OD.ActInd = 'Y' 
JOIN			MANH.SHIPMENT AS SH
ON				OD.TC_SHIPMENT_ID = SH.TC_SHIPMENT_ID
AND				SH.ActInd = 'Y'
JOIN			WEB.Transporter_Status AS TD 
ON				TD.Ship_Via = OD.DSG_SHIP_VIA 
--AND				TD.Delivered = 1 
AND				TD.ActInd = 'Y' 
JOIN (SELECT     SHIPPER_SHIPMENT_REF, STATUS, MAX(STATUS_DATE) AS STATUS_DATE
                            FROM          TRANS.FORWARDER_STATUS AS F1
                            GROUP BY SHIPPER_SHIPMENT_REF, STATUS) AS FD 
ON				FD.SHIPPER_SHIPMENT_REF = LP.TC_LPN_ID 
AND				FD.STATUS = TD.Status 
WHERE			OD.ORDER_TYPE = 'OF' 
AND				OD.DO_STATUS = '190' 
AND				LP.ActInd = 'Y'

/*---------------------------------------------------------------------------*/
/* Loads Orders Delivered													 */
/*---------------------------------------------------------------------------*/


INSERT  INTO @retDate
					(
                      [Date]
                    , [Order_ID]
                    , [Shipment_ID]
                    , [Transporter_Code]
                    , [Transporter_Via_Code]
					, [Number_Of_Orders_Delivered]
                    )
SELECT	  MAX(Date)
		, Order_ID
		, Shipment_ID
		, Transporter_Code
		, Transporter_Via_Code
		, MIN(Delivered)	AS Number_Of_Orders_Delivered
FROM(
		SELECT  			  CONVERT(CHAR,FD.STATUS_DATE,112)	AS Date
							, LP.TC_LPN_ID						AS OLPN_ID
							, LP.TC_ORDER_ID					AS Order_ID
							, OD.TC_SHIPMENT_ID					AS Shipment_ID
							, SH.DSG_CARRIER_CODE				AS Transporter_Code
							, OD.DSG_SHIP_VIA					AS Transporter_Via_Code
							, CASE WHEN FD.STATUS_DATE IS NUll THEN 0 ELSE 1 END as Delivered
		FROM			dbo.VW_T_LPN AS LP 
		JOIN			MANH.ORDERS AS OD 
		ON				OD.TC_ORDER_ID = LP.TC_ORDER_ID 
		AND				OD.ActInd = 'Y' 
		JOIN			MANH.SHIPMENT AS SH
		ON				OD.TC_SHIPMENT_ID = SH.TC_SHIPMENT_ID
		AND				SH.ActInd = 'Y'
		LEFT JOIN		WEB.Transporter_Status AS TD 
		ON				TD.Ship_Via = OD.DSG_SHIP_VIA 
--		AND				TD.Delivered = 1 
		AND				TD.ActInd = 'Y' 
		LEFT JOIN		(SELECT     SHIPPER_SHIPMENT_REF, STATUS, MAX(STATUS_DATE) AS STATUS_DATE
									FROM          TRANS.FORWARDER_STATUS AS F1
									GROUP BY SHIPPER_SHIPMENT_REF, STATUS) AS FD 
		ON				FD.SHIPPER_SHIPMENT_REF = LP.TC_LPN_ID 
		AND				FD.STATUS = TD.Status 
		WHERE			OD.ORDER_TYPE = 'OF' 
		AND				OD.DO_STATUS = '190' 
		AND				LP.ActInd = 'Y'
)A
GROUP BY Order_ID
		, Shipment_ID
		, Transporter_Code
		, Transporter_Via_Code
HAVING MIN(Delivered) =1 

	  return ;

END;