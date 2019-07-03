



create view [FDV].[VW_D_BOM_Explosie] as
WITH CTE_1 as 
 (select PART_NO
 ,mh.EFF_PHASE_IN_DATE
 ,mh.EFF_PHASE_OUT_DATE 
 ,mh.ENG_CHG_LEVEL
 from IFS.MANUF_STRUCTURE_HEAD mh
  where mh.ActInd='Y'
   and mh.CONTRACT='FD01')

,CTE_2 as  
  (Select  ms1.[PART_NO]													AS SALES_PART_LEVEL_0
         ,INVP2.DESCRIPTION													AS Product_Name
         ,ms1.[COMPONENT_PART]												AS COMPONENT_LEVEL_1
	     ,ms2.COMPONENT_PART												AS COMPONENT_LEVEL_2
		 ,ms3.COMPONENT_PART												AS COMPONENT_LEVEL_3
	     ,CASE when ms3.COMPONENT_PART is not null  then ms3.[COMPONENT_PART]
			   when ms3.COMPONENT_PART is null and ms2.COMPONENT_PART is not null then  ms2.COMPONENT_PART
	           else ms1.COMPONENT_PART
			   end														    AS INKOOP_PART
	     ,ms1.[QTY_PER_ASSEMBLY]											AS QTY_PER_ASSEMBLY_VERKOOP
	     ,PP.PART_NO														AS PURCHASE_PART
	    -- ,PP.[DESCRIPTION]													AS PURCHASE_PART_DESCRIPTION
		 ,INVP.[PART_PRODUCT_CODE]											AS PART_PRODUCT_CODE
         --,INVP.[PART_PRODUCT_FAMILY]										AS PART_PRODUCT_FAMILY
		 --,INVP2.[PART_PRODUCT_FAMILY]										AS SALES_PRODUCT_FAMILY
	     --,PF.[DESCRIPTION]													AS FAM_SKU_NIVEAU
	     --,PF2.[DESCRIPTION]													AS FAM_HOOFD_NIVEAU
		 ,ms1.ALTERNATIVE_NO												AS ANO1
		 ,case when SP.USE_SITE_SPECIFIC='True' then 'BK'
		       when SP.USE_SITE_SPECIFIC='False' then 'OF'
			   end															AS SALE_TYPE
	     
  FROM IFS.MANUF_STRUCTURE ms1
   
    left join IFS.MANUF_STRUCTURE ms2 --left verwijderd
    on
    ms1.COMPONENT_PART=ms2.PART_NO
	and ms1.ENG_CHG_LEVEL=ms2.ENG_CHG_LEVEL -- toegevoegd
	and ms1.ActInd='Y'
	and ms2.ActInd='Y'
	and ms1.CONTRACT='FD01'
	and ms2.CONTRACT='FD01'

    left join IFS.MANUF_STRUCTURE ms3
	on
	ms2.COMPONENT_PART=ms3.PART_NO
	and ms2.ActInd='Y'
	and ms3.ActInd='Y'
	and ms1.CONTRACT='FD01'
	and ms3.CONTRACT='FD01'
	   
    join [IFS].[PURCHASE_PART] PP
    on
    PP.PART_NO=CASE when ms3.COMPONENT_PART is not null  then ms3.[COMPONENT_PART]
			   when ms3.COMPONENT_PART is null and ms2.COMPONENT_PART is not null then  ms2.COMPONENT_PART
	           else ms1.COMPONENT_PART
			   end
    and PP.ActInd='Y'


    join IFS.INVENTORY_PART INVP
	on
	INVP.PART_NO=ms1.COMPONENT_PART
	and INVP.ActInd='Y'
	and ms1.CONTRACT='FD01'
	left join IFS.INVENTORY_PRODUCT_FAMILY PF
	on
	PF.PART_PRODUCT_FAMILY=INVP.PART_PRODUCT_FAMILY
	and PF.ActInd='Y'
	and INVP.CONTRACT='FD01'

	join IFS.INVENTORY_PART INVP2
	on
	INVP2.PART_NO=ms1.PART_NO
	and INVP2.ActInd='Y'
	and ms1.CONTRACT='FD01'

	join IFS.INVENTORY_PRODUCT_FAMILY PF2
	on
	PF2.PART_PRODUCT_FAMILY=INVP2.PART_PRODUCT_FAMILY
	and PF2.ActInd='Y'
	and INVP2.CONTRACT='FD01'
	
	join IFS.SALES_PART SP
	on 
	SP.PART_NO=ms1.PART_NO
	and SP.ActInd='Y'
	and ms1.CONTRACT='FD01'
	where ms1.ActInd='Y'
	and ms1.CONTRACT='FD01'
	group by ms1.[PART_NO]													
         ,INVP2.DESCRIPTION													
         ,ms1.[COMPONENT_PART]												
	     ,ms2.COMPONENT_PART												
		 ,ms3.COMPONENT_PART												
	     ,CASE when ms3.COMPONENT_PART is not null  then ms3.[COMPONENT_PART]
			   when ms3.COMPONENT_PART is null and ms2.COMPONENT_PART is not null then  ms2.COMPONENT_PART
	           else ms1.COMPONENT_PART
			   end														    
	     ,ms1.[QTY_PER_ASSEMBLY]											
	     ,PP.PART_NO														
	     ,PP.[DESCRIPTION]													
		 ,INVP.[PART_PRODUCT_CODE]											
         --,INVP.[PART_PRODUCT_FAMILY]										
		 --,INVP2.[PART_PRODUCT_FAMILY]										
	     --,PF.[DESCRIPTION]													
	     --,PF2.[DESCRIPTION]													
		 ,ms1.ALTERNATIVE_NO												
		 ,case when SP.USE_SITE_SPECIFIC='True' then 'BK'
		       when SP.USE_SITE_SPECIFIC='False' then 'OF'
			   end														
	)
	,CTE_3 as
	(select 
	C2.Product_Name													    AS Product_Name
	,C2.SALES_PART_LEVEL_0												AS Sales_Part_Level_0
	,ISNULL(C2.COMPONENT_LEVEL_1,'-1')									AS Component_Level_1
	,ISNULL(C2.COMPONENT_LEVEL_2,'-1')									AS Component_Level_2
	,ISNULL(C2.COMPONENT_LEVEL_3,'-1')									AS Component_Level_3
	,max(C1.EFF_PHASE_IN_DATE) AS Phase_In_Date-- over (Partition BY  C2.SALES_PART_LEVEL_0 order by 	C2.SALES_PART_LEVEL_0)							AS Phase_In_Date
	,max(C1.EFF_PHASE_OUT_DATE) AS Phase_Out_Date--	over (Partition BY  C2.SALES_PART_LEVEL_0 order by 	C2.SALES_PART_LEVEL_0)											AS Phase_Out_Date
	,max(C1.ENG_CHG_LEVEL) AS Revision_NR --over (Partition BY  C2.SALES_PART_LEVEL_0 order by 	C2.SALES_PART_LEVEL_0)    AS Revision_NR
	,ISNULL(C2.INKOOP_PART, '-1')										AS Inkoop_part
	,C2.QTY_PER_ASSEMBLY_VERKOOP										AS QTY_Per_Assembley_Verkoop
	,C2.PURCHASE_PART													AS Purchase_Part
	--,C2.PURCHASE_PART_DESCRIPTION										AS Component_Part_Description
	,C2.PART_PRODUCT_CODE												AS Bonus_Part
	--,C2.PART_PRODUCT_FAMILY												AS Component_Product_Family
	--,C2.SALES_PRODUCT_FAMILY											AS Sales_Part_Product_Family
	--,C2.FAM_SKU_NIVEAU													AS FAM_Component_Niveau
	--,C2.FAM_HOOFD_NIVEAU												AS FAM_Sales_Part_Niveau
	,C2.SALE_TYPE														AS Sale_Type
	,C2.ANO1															AS Type
	
	
	from CTE_2 C2
	join CTE_1 C1
	on C1.PART_NO=C2.SALES_PART_LEVEL_0
    where C2.ANO1='*'
	group by 
	C2.Product_Name													   
	,C2.SALES_PART_LEVEL_0												
	,ISNULL(C2.COMPONENT_LEVEL_1,'-1')									
	,ISNULL(C2.COMPONENT_LEVEL_2,'-1')									
	,ISNULL(C2.COMPONENT_LEVEL_3,'-1')									
	
	,ISNULL(C2.INKOOP_PART, '-1')										
	,C2.QTY_PER_ASSEMBLY_VERKOOP										
	,C2.PURCHASE_PART													
	--,C2.PURCHASE_PART_DESCRIPTION										AS Component_Part_Description
	,C2.PART_PRODUCT_CODE												
	--,C2.PART_PRODUCT_FAMILY												AS Component_Product_Family
	--,C2.SALES_PRODUCT_FAMILY											AS Sales_Part_Product_Family
	--,C2.FAM_SKU_NIVEAU													AS FAM_Component_Niveau
	--,C2.FAM_HOOFD_NIVEAU												AS FAM_Sales_Part_Niveau
	,C2.SALE_TYPE														
	,C2.ANO1)	

	--and C2.SALES_PART_LEVEL_0='60085RDV' --'209AL'--'456R1ADNB'  --'456R1ADNB'--'716PELOF')

select 

ROW_NUMBER() OVER 	
	(ORDER BY ISNULL(C3.Component_Level_1,'-1')	
	,ISNULL(C3.Component_Level_1,'-1')
	,ISNULL(C3.Component_Level_2,'-1')
	,ISNULL(C3.Component_Level_3,'-1')
	,ISNULL(C3.Revision_NR, '-1')	)AS BOM_ID,*
from CTE_3 C3
   --where C3.Sales_Part_Level_0='716PELOF'
   union all
	SELECT     -1,NULL,NULL,NULL,NULL, NULL, NULL, NULL, NULL, NULL,NULL,NULL, NULL, NULL, NULL
	--order by 1