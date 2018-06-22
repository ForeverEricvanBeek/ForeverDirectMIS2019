﻿
CREATE VIEW dbo.VW_D_Country
AS
SELECT
  CC.COUNTRY_CODE			AS Country_Code
  , CC.COUNTRY_NAME			AS Country_Name
FROM		MANH.COUNTRY CC
WHERE		CC.ActInd = 'Y'

UNION ALL

SELECT
  '-1'
  , 'Unknown'