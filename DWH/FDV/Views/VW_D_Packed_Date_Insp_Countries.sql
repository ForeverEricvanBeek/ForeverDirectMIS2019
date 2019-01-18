


CREATE VIEW [FDV].[VW_D_Packed_Date_Insp_Countries]
AS

SELECT O.TC_ORDER_ID as Order_ID
,MIN(P.CREATE_DATE_TIME) as Packed_Time
,O.D_COUNTRY_CODE as Country_Code
FROM [MANH].ORDERS O
join [MANH].[PIX_TRAN] P
on P.REF_FIELD_1=O.TC_ORDER_ID
and P.REF_FIELD_2='165'
and O.D_COUNTRY_CODE in ('GA','BF','BI','CM','CG','GA','CI','KE','ML','SN','TG','TZ','UG','ZW','IQ','LR','QA','CD')
and O.ActInd='Y'
and O.ORDER_TYPE='BK'
group by O.TC_ORDER_ID
,O.D_COUNTRY_CODE
,O.DO_STATUS
union all
select '-1',null,'-1'