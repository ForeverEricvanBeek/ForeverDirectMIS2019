﻿


CREATE VIEW [DM2].[VW_D_ILPN]
AS

SELECT
  LP.LPN_ID					AS ILPN_ID
  , LP.TC_LPN_ID			AS ILPN_TC_LPN_ID
  , STUFF((SELECT DISTINCT ',' + LL.INVENTORY_LOCK_CODE FROM MANH.LPN_LOCK AS LL WHERE LL.ActInd='Y' AND LL.LPN_ID = LP.LPN_ID FOR XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'),1,1,'') AS ILPN_LOCK_CODE
FROM		dbo.VW_T_LPN AS LP
WHERE		LP.ActInd = 'Y' 
AND			LP.INBOUND_OUTBOUND_INDICATOR = 'I'
AND			LP.Eff_Date >= GETDATE() -2
AND			LP.End_Date >= GETDATE() -2

UNION ALL

SELECT -1,N'Unknown',NULL