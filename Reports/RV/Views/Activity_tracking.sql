CREATE VIEW [RV].[Activity_tracking]
AS
SELECT 
    PT.TRAN_TYPE								AS 'Tran_Type'
   , PT.TRAN_CODE								AS 'Tran_Code'
   , ISNULL(PT.CNTR_NBR,' ')					AS 'LPN'
   , PT.WAVE_NBR								AS 'Wave'
   , PT.WORK_TYPE								AS 'Work_Type'
   , PT.NBR_UNITS								AS '#_of_Units'
   , ISNULL(L1.DSP_LOCN,' ')					AS 'From_Location'
   , ISNULL(L2.DSP_LOCN,' ')					AS 'To_Location'
   , PT.MODULE_NAME								AS 'RF_Module'
   , PT.MENU_OPTN_NAME							AS 'RF_Menu_option'
   , PT.CREATE_DATE_TIME						AS 'Create_date'
   , CONVERT(DATE,PT.CREATE_DATE_TIME)			AS 'Datum'
   , ISNULL(PT.USER_ID,' ')					    AS 'Picker'
   , ISNULL(IC.ITEM_NAME,' ')					AS 'Item'
   , PT.REF_CODE_ID_1							AS 'Reference_code_1'
   , PT.REF_FIELD_1								AS 'Reference_field_1'
   , PT.REF_CODE_ID_2							AS 'Reference_code_2'
   , PT.REF_FIELD_2								AS 'Reference_field_2'
   , PT.REF_CODE_ID_3							AS 'Reference_code_3'
   , PT.REF_FIELD_3								AS 'Reference_field_3'
   , PT.REF_CODE_ID_4							AS 'Reference_code_4'
   , PT.REF_FIELD_4								AS 'Reference_field_4'
   , PT.REF_CODE_ID_5							AS 'Reference_code_5'
   , PT.REF_FIELD_5								AS 'Reference_field_5'
   , PT.TASK_ID									AS 'Task_ID'
   , PT.PLT_ID									AS 'Pallet_ID'
FROM		[$(DWH)].MANH.PROD_TRKG_TRAN PT
LEFT JOIN	[$(DWH)].MANH.ITEM_CBO IC
ON			IC.ITEM_ID = PT.ITEM_ID
AND			IC.ActInd = 'Y'
LEFT JOIN	[$(DWH)].MANH.LOCN_HDR L1
ON			L1.LOCN_ID = PT.FROM_LOCN
AND			L1.ActInd = 'Y'
LEFT JOIN	[$(DWH)].MANH.LOCN_HDR L2
ON			L2.LOCN_ID = PT.TO_LOCN
AND			L2.ActInd = 'Y'