
CREATE view FDV.VW_D_PROD_LUS
AS
WITH CTE_INIT AS (
       SELECT 
         PR.DateKey                                                                AS Datum
         , PR.TimeKey                                                              AS Tijdstip
		 , PR.Number_Of_Units													   AS Number_Of_Units
		 , PR.Number_Of_Picks													   AS Number_Of_Picks
         , PK.Pickers_Name                                                         AS Picker
         , CASE 
                     WHEN WH.Location_Aisle IN ('35','36') THEN 'Lus 1'
                     WHEN WH.Location_Aisle in ('37','38') THEN 'Lus 2' 
                     WHEN WH.Location_Aisle in ('39','40') THEN 'Lus 3'
                     WHEN WH.Location_Aisle IN ('41','42') THEN 'Lus 4'
                     WHEN WH.Location_Aisle IN ('43','44','45', '46') THEN 'Lus 5'
         END                                                                        AS LUS                         
       FROM          [$(ForeverData01)].DM.F_OF_Productivity PR
       INNER JOIN    [$(ForeverData01)].DM.D_Pickers PK
       ON                   PK.D_Pickers_Skey = PR.D_Pickers_Skey
       AND                  PK.Pickers_Name IS NOT NULL
       INNER JOIN    [$(ForeverData01)].DM.D_WHS_Location WH
       ON                   WH.D_WHS_Location_Skey = PR.D_WHS_Location_Skey
       AND                  WH.Location_Display_Location IS NOT NULL
       WHERE        PR.DateKey  > CONCAT(Year(GETDATE())-1 ,'01' ,'01')
), CTE_SORT1 AS(
       SELECT 
         *
         , ROW_NUMBER() OVER(Order By Datum, Picker, Tijdstip DESC) RN1 
       FROM CTE_INIT CI
), CTE_SORT2 AS(
       SELECT 
         *
         , ROW_NUMBER() OVER(Order By C1.RN1) - ROW_NUMBER() OVER(Partition By LUS Order By C1.RN1) RN2 
       FROM CTE_SORT1 C1

),CTE_TOT AS(
SELECT
  CS.Datum as datum
  , CS.Picker as picker
  , CS.LUS as lus
  , MIN(CS.Tijdstip) AS Starttijd
  , MAX(CS.Tijdstip) AS Eindtijd
  , SUM(CS.Number_Of_Units) AS Num_of_Units
  , SUM(CS.Number_Of_Picks) AS Num_of_Picks
FROM CTE_SORT2 CS
GROUP BY
  CS.Datum
  , CS.Picker
  , CS.LUS
  , CS.RN2)

Select CT.datum
,CT.picker
,CT.lus
,CT.Starttijd
,CT.Eindtijd
,CT.Num_of_Units
,CT.Num_of_Picks
,DATEDIFF(SS,CT.Starttijd,CT.Eindtijd) as Working_Sec
from CTE_TOT CT
--order by 1,2,4,3