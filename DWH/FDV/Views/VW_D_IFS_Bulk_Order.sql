



CREATE VIEW [FDV].[VW_D_IFS_Bulk_Order]
AS
SELECT 
cast(O.DATE_ENTERED as date)	AS DateKey
,O.AUTHORIZE_CODE				AS Authorize_Code
,O.ORDER_NO						AS Order_NO
,ISNULL(O.COUNTRY_CODE,'-1')	AS Country_Code
,ISNULL(O.CUSTOMER_PO_NO,'-1')	AS Master_Order
,ISNULL(O.STATE,'-1')			AS Status
,O.CUSTOMER_NO					AS Order_Facility_Code
,C.Country_Name					AS Country_Name
,O.ORDER_ID						AS Order_Type
/*Onderstaande code herleidt wat voor soort order het betreft en resulteert in veld sub_order_type*/ 
,case when ISNUMERIC(substring(O.CUSTOMER_PO_NO,4,6))=1 
 and ISNUMERIC(substring(O.CUSTOMER_PO_NO,1,1))=0 
 and ISNUMERIC(substring(O.CUSTOMER_PO_NO,2,2))=0 
 and ISNUMERIC(substring(O.CUSTOMER_PO_NO,3,3))=0 
 and LEN(O.CUSTOMER_PO_NO)=9  
 and O.CUSTOMER_NO not like ('%PC%')
 and O.ORDER_ID='BK' --nieuw om "MO" uit te filteren
 then 'MO' 
 when  O.CUSTOMER_NO  like '%PC%' then 'PC'
 when O.CUSTOMER_NO  like '%REFRES' then 'REFR'
 when O.CUSTOMER_NO like '%EDCR' then 'EDCR'
 else 'Other' end				AS Sub_Order_Type
      
FROM [IFS].[CUSTOMER_ORDER] O
left join [ForeverData01].[DM].[D_Country] C

on O.COUNTRY_CODE=C.Country_Code
where O.ORDER_ID = 'BK'
and O.ActInd='Y'
and O.IsDeleted='N'
and O.CUSTOMER_NO not like '%SAMPLE%'
and O.CUSTOMER_NO not like '%SCR%'
and O.DATE_ENTERED > '2018-09-01'  --getdate()-365