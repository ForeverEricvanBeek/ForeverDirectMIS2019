﻿
CREATE VIEW FDV.[VW_D_Test]
AS

SELECT ASN_STATUS, DESCRIPTION FROM DWH.MANH.ASN_STATUS WHERE ActInd = 'Y'