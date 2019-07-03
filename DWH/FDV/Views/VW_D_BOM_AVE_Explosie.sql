




create view [FDV].[VW_D_BOM_AVE_Explosie] as

WITH CTE_1 as 
 (select PART_NO
 ,mh.CONTRACT
 ,mh.EFF_PHASE_IN_DATE
 ,mh.EFF_PHASE_OUT_DATE 
 ,mh.ENG_CHG_LEVEL
 from IFS.MANUF_STRUCTURE_HEAD mh
 where mh.ActInd='Y'
 and mh.CONTRACT like 'AVE%')

,CTE_2 as  
  (Select  ms1.[PART_NO]													AS SALES_PART_LEVEL_0
         ,INVP2.DESCRIPTION													AS Product_Name
         ,ms1.[COMPONENT_PART]												AS COMPONENT_LEVEL_1
	     ,ms1.COMPONENT_PART     AS INKOOP_PART
	     ,ms1.[QTY_PER_ASSEMBLY]											AS QTY_PER_ASSEMBLY_VERKOOP
		 ,ms1.PRINT_UNIT													AS PRINT_UNIT
	     ,PP.PART_NO														AS PURCHASE_PART
	     ,PP.[DESCRIPTION]													AS PURCHASE_PART_DESCRIPTION
		 ,INVP.[PART_PRODUCT_CODE]											AS PART_PRODUCT_CODE
		 ,ms1.ALTERNATIVE_NO												AS ANO1
		 ,case when SP.USE_SITE_SPECIFIC='True' then 'BK'
		       when SP.USE_SITE_SPECIFIC='False' then 'OF'
			   end															AS SALE_TYPE
	     
    FROM IFS.MANUF_STRUCTURE ms1
   
    left join IFS.MANUF_STRUCTURE ms2
    on
    ms1.COMPONENT_PART=ms2.PART_NO
	and ms1.ENG_CHG_LEVEL=ms2.ENG_CHG_LEVEL 
	and ms1.ActInd='Y'
	and ms2.ActInd='Y'
	and ms1.CONTRACT like 'AVE%'
	and ms2.CONTRACT like 'AVE%'
	   
    join [IFS].[PURCHASE_PART] PP
    on
    PP.PART_NO= ms1.COMPONENT_PART
			   
    and PP.ActInd='Y'
	
    join IFS.INVENTORY_PART INVP
	on
	INVP.PART_NO=ms1.COMPONENT_PART
	and INVP.ActInd='Y'
	and ms1.CONTRACT like 'AVE%'
	left join IFS.INVENTORY_PRODUCT_FAMILY PF
	on
	PF.PART_PRODUCT_FAMILY=INVP.PART_PRODUCT_FAMILY
	and PF.ActInd='Y'
	and INVP.CONTRACT like 'AVE%'

	join IFS.INVENTORY_PART INVP2
	on
	INVP2.PART_NO=ms1.PART_NO
	and INVP2.ActInd='Y'
	and ms1.CONTRACT like 'AVE%'

	join IFS.INVENTORY_PRODUCT_FAMILY PF2
	on
	PF2.PART_PRODUCT_FAMILY=INVP2.PART_PRODUCT_FAMILY
	and PF2.ActInd='Y'
	and INVP2.CONTRACT like 'AVE%'
	
	join IFS.SALES_PART SP
	on 
	SP.PART_NO=ms1.PART_NO
	and SP.ActInd='Y'
	and ms1.CONTRACT like 'AVE%'
	where ms1.ActInd='Y'
	and ms1.CONTRACT like 'AVE%'
	group by ms1.[PART_NO]													
         ,INVP2.DESCRIPTION													
         ,ms1.[COMPONENT_PART]	
		 ,ms1.PRINT_UNIT																																					    
	     ,ms1.[QTY_PER_ASSEMBLY]											
	     ,PP.PART_NO														
	     ,PP.[DESCRIPTION]													
		 ,INVP.[PART_PRODUCT_CODE]																					
		 ,ms1.ALTERNATIVE_NO												
		 ,case when SP.USE_SITE_SPECIFIC='True' then 'BK'
		       when SP.USE_SITE_SPECIFIC='False' then 'OF'
			   end														
	)
	,CTE_3 as
	(select 
	C2.Product_Name													    AS Product_Name
	,C1.CONTRACT														AS CONTRACT
	,C2.SALES_PART_LEVEL_0												AS Sales_Part_Level_0
	,ISNULL(C2.COMPONENT_LEVEL_1,'-1')									AS Component_Level_1
	,C2.PURCHASE_PART_DESCRIPTION										AS Component_Part_Description
	,max(C1.EFF_PHASE_IN_DATE) AS Phase_In_Date
	,max(C1.EFF_PHASE_OUT_DATE) AS Phase_Out_Date
	,max(C1.ENG_CHG_LEVEL) AS Revision_NR
	,C2.QTY_PER_ASSEMBLY_VERKOOP										AS QTY_Per_Assembley_Verkoop
	,C2.PRINT_UNIT
	,C2.SALE_TYPE														AS Sale_Type
	,C2.ANO1															AS Type
	from CTE_2 C2
	join CTE_1 C1
	on C1.PART_NO=C2.SALES_PART_LEVEL_0
    where C2.ANO1='*'
	group by 
	C2.Product_Name	
	,C1.CONTRACT												   
	,C2.SALES_PART_LEVEL_0												
	,ISNULL(C2.COMPONENT_LEVEL_1,'-1')										
	,C2.PURCHASE_PART_DESCRIPTION
	,ISNULL(C2.INKOOP_PART, '-1')										
	,C2.QTY_PER_ASSEMBLY_VERKOOP	
	,C2.PRINT_UNIT									
	,C2.PURCHASE_PART													
	,C2.PART_PRODUCT_CODE												
	,C2.SALE_TYPE														
	,C2.ANO1)	
select 

ROW_NUMBER() OVER 	
	(ORDER BY ISNULL(C3.Component_Level_1,'-1')	
	,ISNULL(C3.Component_Level_1,'-1')
	
	,ISNULL(C3.Revision_NR, '-1')	)AS BOM_ID,*
from CTE_3 C3
--where Sales_Part_Level_0='002JR1'
   
   union all
	SELECT     -1,NULL,NULL,NULL,NULL, NULL, NULL, NULL, NULL, NULL,NULL,NULL,NULL