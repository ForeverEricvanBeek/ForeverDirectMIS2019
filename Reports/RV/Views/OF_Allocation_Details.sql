﻿
CREATE VIEW [RV].[OF_Allocation_Details] AS

Select 
  PZ.GRP_ATTR
  , LH.DSP_LOCN
  , I.ITEM_NAME
  , CONVERT(VARCHAR(10), AD.MOD_DATE_TIME, 112) AS YEAR
  , Count(Distinct AD.ALLOC_INVN_DTL_ID)		AS PICKS 
  , Sum(CAST(AD.QTY_ALLOC AS INT))							AS ALLOC_QTY
  , LH.WORK_AREA
  , LH.PICK_DETRM_ZONE
  , CAST(RP.QUANTITY AS INT) AS QUANTITY
  , LH.SKU_DEDCTN_TYPE
  , I.UNIT_WEIGHT
  , I.UNIT_VOLUME
  , I.UNIT_HEIGHT
  , I.UNIT_WIDTH
  , I.UNIT_LENGTH
  , I.DESCRIPTION
  , IM.CASE_SIZE_TYPE
  , O.DSG_SHIP_VIA
From            [$(DWH)].MANH.ALLOC_INVN_DTL AD
LEFT JOIN       [$(DWH)].MANH.LOCN_HDR LH
ON              AD.PULL_LOCN_ID = LH.LOCN_ID
AND				LH.ActInd = 'Y'
LEFT JOIN       [$(DWH)].MANH.ORDERS O
ON              AD.TC_ORDER_ID = O.TC_ORDER_ID
AND             O.ORDER_TYPE = 'OF'
AND				O.ActInd = 'Y'
LEFT JOIN       [$(DWH)].MANH.ITEM_CBO I
ON              AD.ITEM_ID = I.ITEM_ID
AND				I.ActInd = 'Y'
LEFT JOIN       [$(DWH)].MANH.ITEM_PACKAGE_CBO RP
ON				I.ITEM_ID = RP.ITEM_ID
AND				RP.ActInd = 'Y'
LEFT JOIN       [$(DWH)].MANH.LOCN_GRP PZ
ON              LH.LOCN_ID = PZ.LOCN_ID
AND				PZ.ActInd = 'Y'
LEFT JOIN       [$(DWH)].MANH.ITEM_FACILITY_MAPPING_WMS IM
ON              IM.ITEM_ID = I.ITEM_ID
AND				IM.ActInd = 'Y'
Where           AD.TASK_CMPL_REF_CODE = '6'
AND				AD.ActInd = 'Y'
AND				AD.MOD_DATE_TIME >=  dateadd(month,-13,getdate())  --'20190101'
--AND				AD.MOD_DATE_TIME < '20190425'
AND AD.QTY_ALLOC <> 0
GROUP BY
  PZ.GRP_ATTR
  , LH.DSP_LOCN
  , I.ITEM_NAME
  , CONVERT(VARCHAR(10), AD.MOD_DATE_TIME, 112)
  , LH.WORK_AREA
  , LH.PICK_DETRM_ZONE
  , RP.QUANTITY
  , LH.SKU_DEDCTN_TYPE
  , I.UNIT_WEIGHT
  , I.UNIT_VOLUME
  , I.UNIT_HEIGHT
  , I.UNIT_WIDTH
  , I.UNIT_LENGTH
  , I.DESCRIPTION
  , IM.CASE_SIZE_TYPE
  , O.DSG_SHIP_VIA
Having PZ.GRP_ATTR Like '0%'