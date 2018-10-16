﻿

CREATE VIEW [FDV].[VW_D_Shipment]
AS

SELECT        
	SHP.TC_SHIPMENT_ID					AS Shipment_ID
	, SHPS.DESCRIPTION					AS Shipment_Status
	, SHP.DSG_CARRIER_CODE				AS Shipment_Carrier_Code
	, SHP.STATUS_CHANGE_DTTM			AS Shipment_Updated
FROM			MANH.SHIPMENT SHP 
INNER JOIN		MANH.SHIPMENT_STATUS SHPS 
ON				SHPS.SHIPMENT_STATUS = SHP.SHIPMENT_STATUS 
AND				SHPS.ActInd = 'Y'
WHERE			SHP.ActInd = 'Y'
UNION ALL
SELECT        '-1', 'Unknown', NULL, NULL