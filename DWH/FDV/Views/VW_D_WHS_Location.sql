
CREATE VIEW FDV.VW_D_WHS_Location
AS

SELECT 
	LH.LOCN_ID						AS Location_ID
	, LH.LOCN_CLASS					AS Location_Class_Code
	, SC.CODE_DESC					AS Location_Class_Description
	, LH.LOCN_BRCD					AS Location_BarCode
	, LH.AISLE						AS Location_Aisle
	, LH.BAY						AS Location_Bay
	, LH.LVL						AS Location_Level
	, LH.POSN						AS Location_Position
	, LH.DSP_LOCN					AS Location_Display_Location
	, LH.LOCN_PICK_SEQ				AS Location_Pick_Sequence
	, LH.WORK_GRP					AS Location_Work_Group
	, LH.WORK_AREA					AS Location_Work_Area
	, LH.PICK_DETRM_ZONE			AS Location_Pick_Determination_zone
	, PH.PICK_LOCN_ASSIGN_ZONE		AS Location_Pick_Loc_Assignment_Zone
	, S2.CODE_DESC					AS Location_Pick_Loc_Assignment_Zone_Desc
	, LH.PULL_ZONE					AS Location_Pull_Zone
	, LH.PUTWY_ZONE					AS Location_Putaway_Zone
	, L1.GRP_ATTR					AS Location_Group_Attribute_1
	, L2.GRP_ATTR					AS Location_Group_Attribute_51
	, LH.LAST_FROZN_DATE_TIME		AS Location_Last_Frozen_DTTM
	, LH.LAST_CNT_DATE_TIME			AS Location_Last_Count_DTTM
FROM            MANH.LOCN_HDR AS LH 
LEFT JOIN		MANH.SYS_CODE AS SC 
ON				LH.LOCN_CLASS = SC.CODE_ID 
AND				SC.CODE_TYPE = '068' 
AND				SC.REC_TYPE = 'S' 
AND				SC.ActInd = 'Y'
LEFT JOIN       MANH.PICK_LOCN_HDR PH 
ON              PH.LOCN_ID = LH.LOCN_ID
AND				PH.ActInd = 'Y'
LEFT JOIN		MANH.LOCN_GRP L1
ON				L1.LOCN_ID = LH.LOCN_ID
AND				L1.GRP_TYPE = 1
AND				L1.ActInd = 'Y'
LEFT JOIN		MANH.LOCN_GRP L2
ON				L2.LOCN_ID = LH.LOCN_ID
AND				L2.GRP_TYPE = 51
AND				L2.ActInd = 'Y'
LEFT JOIN       MANH.SYS_CODE S2
ON              S2.CODE_ID = PH.PICK_LOCN_ASSIGN_ZONE 
AND             S2.REC_TYPE = 'B'
AND             S2.CODE_TYPE = '330'
AND				S2.ActInd = 'Y'
WHERE			LH.ActInd = 'Y'

UNION ALL

SELECT '-1','1','Unkown','Unkown',NULL,NULL,NULL,NULL,'-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL