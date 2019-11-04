

CREATE VIEW [FD2].[VW_D_Container]
AS

SELECT		
	CT.CNTR_TYPE_ID					AS Container_ID 
	, CT.CNTR_SIZE					AS Container_Size
	, CT.CNTR_DESC					AS Container_Description
	, CONVERT(INT,CT.MAX_CNTR_VOL)	AS Container_Max_Volume
	, CONVERT(NVARCHAR(10) ,CT.EMPTY_CNTR_WT) AS Container_Empty_Weight
	, CONVERT(INT,CT.LEN)			AS Container_Length
	, CONVERT(INT,CT.WIDTH)			AS Container_Width
	, CONVERT(INT,CT.HT)			AS Container_Height
FROM		MANH.CNTR_TYPE CT
WHERE		CT.ActInd = 'Y'

UNION ALL

SELECT -1, NULL, NULL, NULL, NULL, NULL,NULL, NULL