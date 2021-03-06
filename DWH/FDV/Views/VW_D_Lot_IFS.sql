﻿



CREATE VIEW [FDV].[VW_D_Lot_IFS] as
--Stap 1 Ophalen van de Inventory cost van objecten die nog on hand voorraad hebben
with CTE_0 as
(SELECT IPIS.CONTRACT as Contract,  
       IPIS.PART_NO as SKU_Name, 
	   I.ITEM_ID as SKU_Code,
       IPIS.LOT_BATCH_NO AS Lot_Code,
       MAX(cast(IPUC.INVENTORY_VALUE AS DECIMAL(22,5))) as Inventory_Price,
	   LBM.EXPIRATION_DATE as Expiration_Date
FROM IFS.INVENTORY_PART_IN_STOCK IPIS  
LEFT OUTER JOIN IFS.INVENTORY_PART_UNIT_COST_SUM IPUC  
ON IPIS.CONTRACT=IPUC.CONTRACT  
AND IPIS.PART_NO=IPUC.PART_NO  
AND IPUC.LOT_BATCH_NO=IPIS.LOT_BATCH_NO   
AND IPUC.ActInd='Y'
join  IFS.LOT_BATCH_MASTER LBM
ON
LBM.PART_NO=IPIS.PART_NO
AND
LBM.LOT_BATCH_NO=IPIS.LOT_BATCH_NO
and
LBM.ActInd='Y'
join MANH.ITEM_CBO I
on
I.ITEM_NAME=IPIS.PART_NO
and
I.ActInd='Y'
WHERE IPIS.QTY_ONHAND>0
and IPUC.INVENTORY_VALUE is not null
and IPIS.ActInd='Y' 
and IPIS.CONTRACT='FD01' --nieuw
--and IPIS.PART_NO ='4669SC'
GROUP BY IPIS.CONTRACT,  
       IPIS.PART_NO,  
       IPIS.LOT_BATCH_NO,
	   LBM.EXPIRATION_DATE,
	   I.ITEM_ID 
	   )
--Stap 2 Ophalen van de Inventory cost van objecten die geen on hand voorraad meer hebben
,CTE_1  as
(SELECT IPIS.CONTRACT as Contract,  
       IPIS.PART_NO as SKU_Name,  
       IPIS.LOT_BATCH_NO as Lot_Code,  
       sum(IPIS.QTY_ONHAND) INVENTORY_QTY,  
       ITH.COST Inventory_Price ,
       0 INVENTORY_VALUE  
FROM IFS.INVENTORY_PART_IN_STOCK IPIS  
LEFT OUTER JOIN (SELECT ITH2.CONTRACT,  
				ITH2.PART_NO, 
				ITH2.LOT_BATCH_NO, 
				MAX(cast(ITH2.COST as decimal (22,5))) COST 
				FROM IFS.INVENTORY_TRANSACTION_HIST ITH2 
				where ITH2.DATE_APPLIED<=GETDATE()
				and ITH2.ActInd='Y' 
				and ITH2.CONTRACT='FD01' 
				--and ITH2.PART_NO='4669SC' 
				GROUP BY ITH2.CONTRACT
				,ITH2.PART_NO
				,ITH2.LOT_BATCH_NO
				) ITH
ON IPIS.CONTRACT=ITH.CONTRACT  
AND IPIS.PART_NO=ITH.PART_NO  
AND IPIS.LOT_BATCH_NO=ITH.LOT_BATCH_NO  
AND IPIS.ActInd='Y'

--WHERE IPIS.QTY_ONHAND=0 
--where IPIS.PART_NO='4669SC' 
GROUP BY IPIS.CONTRACT  
       ,IPIS.PART_NO  
       ,IPIS.LOT_BATCH_NO  
	   ,ITH.COST
Having sum(IPIS.QTY_ONHAND)=0 )

-- aan elkaar koppelen van stap 1 en 2 dmv  union 
select C1.Contract
,C1.SKU_Name
,I.ITEM_ID as SKU_Code
,C1.Lot_Code
,C1.Inventory_Price
,LBM.EXPIRATION_DATE as Expiration_Date
from CTE_1 C1
join IFS.LOT_BATCH_MASTER LBM 
on LBM.PART_NO=C1.SKU_Name
and
LBM.LOT_BATCH_NO=C1.Lot_Code
and 
LBM.ActInd='Y'
and
C1.INVENTORY_QTY=0
and
C1.Inventory_Price is not null
join MANH.ITEM_CBO I
on
I.ITEM_NAME=C1.SKU_Name
and
I.ActInd='Y'

union 

Select C0.Contract,C0.SKU_Name,C0.SKU_Code,C0.Lot_Code,C0.Inventory_Price,C0.Expiration_Date
from CTE_0 C0