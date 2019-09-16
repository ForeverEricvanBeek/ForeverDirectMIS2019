








CREATE VIEW [FDV].[VW_D_IFS_OF_Order]
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
--filter to check for PC orders, might not be 100% proof.
,case when UPPER(O.CUSTOMER_NO) like '%PC%' then 'PC'
	  when UPPER(O.CUSTOMER_PO_NO) LIKE '%PC%'then 'PC'
	  else O.ORDER_ID  	END	AS Order_Type 
	
FROM [IFS].[CUSTOMER_ORDER] O
	
left join [$(ForeverData01)].[DM].[D_Country] C
	on O.COUNTRY_CODE=C.Country_Code
where O.ORDER_ID = 'OF'
	and O.ActInd='Y'
	and O.IsDeleted='N'

--filters to remove samples and scrap
	and O.CUSTOMER_NO not like '%SAMPLE%'
	and O.CUSTOMER_NO not like '%SCR%'
	and year(O.DATE_ENTERED) >=  year(GETDATE())-1