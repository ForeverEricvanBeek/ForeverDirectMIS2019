

CREATE VIEW [DM2].[VW_D_ActivityType]
AS

SELECT
	PT.TRAN_TYPE				AS Activity_Type
	, PT.TRAN_CODE				AS Activity_Code
	, SO.CODE_DESC				AS Activity_Type_Description
	, SC.CODE_DESC				AS Activity_Code_Description 
    , PT.MENU_OPTN_NAME			AS Activity_Menu_Option
FROM				MANH.PROD_TRKG_TRAN AS PT 
LEFT OUTER JOIN		MANH.SYS_CODE AS SO 
ON					SO.CODE_ID = PT.TRAN_TYPE 
AND					SO.CODE_TYPE = '576' 
AND					SO.REC_TYPE = 'S' 
AND					SO.ActInd = 'Y' 
LEFT OUTER JOIN		MANH.SYS_CODE AS SC 
ON					SC.CODE_ID = (PT.TRAN_TYPE + ' ' + PT.TRAN_CODE) 
AND					SC.CODE_TYPE = '577' 
AND					SC.REC_TYPE = 'S' 
AND					SC.ActInd = 'Y'
WHERE				PT.MOD_DATE_TIME >= GETDATE() -2
AND					PT.MOD_DATE_TIME >= GETDATE() -2
GROUP BY 
	PT.TRAN_TYPE
	, PT.TRAN_CODE
	, SO.CODE_DESC
	, SC.CODE_DESC
	, PT.MENU_OPTN_NAME

UNION ALL

SELECT        '-1', '-1', 'Uknown', 'Unknown', 'Unknown'