
CREATE VIEW [RV].SHIPCONFIRM
AS
SELECT
  CA.FullDate

FROM		[$(ForeverData01)].DM.F_Outbound OU
INNER JOIN	[$(ForeverData01)].DM.D_Calendar CA
ON			CA.DateKey = OU.DateKey
WHERE		CA.FullDate >= GETDATE()-1