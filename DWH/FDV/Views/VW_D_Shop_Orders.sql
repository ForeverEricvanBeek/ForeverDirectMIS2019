﻿
CREATE VIEW [FDV].[VW_D_Shop_Orders]
AS

WITH INV_SHOP_ORDER_COMP_COST_PUB AS
(
SELECT IH.TRANSACTION_ID                 AS  TRANSACTION_ID,
       IH.ACCOUNTING_ID                         AS  ACCOUNTING_ID,
       IH.DATE_TIME_CREATED              AS  DATE_CREATED,
       IH.ORDER_NO                              AS  ORDER_NO,
       IH.RELEASE_NO                     AS  RELEASE_NO,
       IH.SEQUENCE_NO                           AS  SEQUENCE_NO,
       IH.LINE_ITEM_NO                          AS  LINE_ITEM_NO,
       IH.CONTRACT                              AS  CONTRACT,
       IH.PART_NO                               AS  PART_NO,
       IH.TRANSACTION_CODE               AS  TRANSACTION_CODE,
       IC.COST_BUCKET_ID                 AS  COST_BUCKET_ID,
       IC.COMPANY                               AS  COMPANY,
       IC.COST_SOURCE_ID                 AS  COST_SOURCE_ID,
       IC.BUCKET_POSTING_GROUP_ID AS  BUCKET_POSTING_GROUP_ID,
       IC.ACCOUNTING_YEAR                AS  ACCOUNTING_YEAR,
       IC.COST_BUCKET_PUBLIC_TYPE AS  COST_BUCKET_PUBLIC_TYPE,
       IC.ADDED_TO_THIS_TRANSACTION      AS     ADDED_TO_THIS_TRANSACTION,
       IC.UNIT_COST                             AS  UNIT_COST,
          IH.DIRECTION                                 AS  DIRECTION,      
       CASE WHEN UPPER(IC.COST_BUCKET_PUBLIC_TYPE) = 'MATOH' AND UPPER(IC.ADDED_TO_THIS_TRANSACTION) = 'TRUE' AND IH.DIRECTION = '-' 
                     THEN -IC.UNIT_COST * IH.QUANTITY 
                     ELSE IC.UNIT_COST * IH.QUANTITY
              END AS LEVEL_COST,
       
          CASE WHEN IH.DIRECTION = '-'
                     THEN -IC.UNIT_COST * IH.QUANTITY  
                     ELSE IC.UNIT_COST * IH.QUANTITY-- 'IC.UNIT_COST * IH.QUANTITY'
              END AS ACCUM_COST,
              IH.CONFIGURATION_ID               CONFIGURATION_ID,
              IH.LOT_BATCH_NO                   LOT_BATCH_NO,
              IH.SERIAL_NO                      SERIAL_NO,
              CASE WHEN IH.DIRECTION = '-'
                     THEN -IH.QUANTITY ELSE IH.QUANTITY
              END AS QUANTITY,
              IH.OBJID,
              IH.OBJVERSION
FROM IFS.INVENTORY_TRANSACTION_HIST IH
INNER JOIN  IFS.INVENTORY_TRANSACTION_COST IC
ON IH.TRANSACTION_ID = IC.TRANSACTION_ID
       AND IC.ActInd = 'Y'
WHERE IH.ActInd = 'Y'
       AND   IH.DIRECTION IN ('+','-')
    AND   UPPER(IH.TRANSACTION_CODE) NOT IN ('OOREC','SUNREC')
    AND   UPPER(IH.ORDER_TYPE) = 'SHOP ORDER'
)
SELECT 
              ISNULL(VW.TRANSACTION_ID, '-1') AS [Transaction ID], 
              ISNULL(VW.ACCOUNTING_ID, '-1') AS [Accounting ID],
              VW.DATE_CREATED AS [Create Date],
              ISNULL(VW.ORDER_NO, '-1') AS [Order Number],
              VW.RELEASE_NO AS [Release Number],
              VW.SEQUENCE_NO AS [Sequence Number],
              VW.LINE_ITEM_NO AS [Line Item Number],
              VW.OPERATION_NO AS [Operation Number],
              ISNULL(VW.CONTRACT, '-1') AS [Contract],
              ISNULL(VW.PART_NO,  '-1') AS [Part NO],
              VW.TRANSACTION_CODE AS [Transaction Code],
              ISNULL(VW.COST_BUCKET_ID, '-1') AS [Cost Bucket ID] ,
              VW.COST_BUCKET_PUBLIC_TYPE AS [Cost Bucket Public Type],
              VW.COMPANY AS [Company],
              VW.COST_SOURCE_ID AS [Cost Source ID], 
              VW.BUCKET_POSTING_GROUP_ID AS [Bucket Posting Group ID],
              VW.ACCOUNTING_YEAR AS [Accounting Year],
              VW.LEVEL_COST AS [Level Cost], 
              VW.ACCUM_COST AS [Accumalative Costs],
              VW.CONFIGURATION_ID AS [Configuration ID],
              ISNULL(VW.LOT_BATCH_NO, '-1') AS [Lot Batch Number],
              VW.SERIAL_NO AS [Serial Number],
              VW.WORK_CENTER_NO AS [Work Center],
              VW.QUANTITY AS [Quantity],
              VW.ROW_TYPE AS [Row Type],
              VW.OBJID AS [Objid],
              VW.OBJVERSION AS [Objversion]

FROM
(

SELECT TRANSACTION_ID                 TRANSACTION_ID,
       ACCOUNTING_ID                  ACCOUNTING_ID,
       DATE_CREATED                   DATE_CREATED,
       ORDER_NO                       ORDER_NO,
       RELEASE_NO                     RELEASE_NO,
       SEQUENCE_NO                    SEQUENCE_NO,
       LINE_ITEM_NO                   LINE_ITEM_NO,
       ''                                         OPERATION_NO,
       CONTRACT                       CONTRACT,
       PART_NO                        PART_NO,
       TRANSACTION_CODE               TRANSACTION_CODE,
       COST_BUCKET_ID                 COST_BUCKET_ID,
       COST_BUCKET_PUBLIC_TYPE        COST_BUCKET_PUBLIC_TYPE,
       COMPANY                        COMPANY,
       COST_SOURCE_ID                 COST_SOURCE_ID,
       BUCKET_POSTING_GROUP_ID        BUCKET_POSTING_GROUP_ID,
       ACCOUNTING_YEAR                ACCOUNTING_YEAR,
       LEVEL_COST                     LEVEL_COST,
       ACCUM_COST                     ACCUM_COST,
       CONFIGURATION_ID               CONFIGURATION_ID,
       LOT_BATCH_NO                   LOT_BATCH_NO,
       SERIAL_NO                      SERIAL_NO,
       NULL                           WORK_CENTER_NO,
       QUANTITY                       QUANTITY,
       'INVENTORY'                    ROW_TYPE,
          OBJID,
              OBJVERSION

FROM INV_SHOP_ORDER_COMP_COST_PUB
UNION ALL
SELECT /*+ ORDERED USE_NL(OTC) INDEX (OTC OPERATION_TRANSACTION_COST_PK) */
       OH.TRANSACTION_ID                 TRANSACTION_ID,
       OH.ACCOUNTING_ID                  ACCOUNTING_ID,
       OH.DATED                          DATE_CREATED,
       OH.ORDER_NO                       ORDER_NO,
       OH.RELEASE_NO                     RELEASE_NO,
       OH.SEQUENCE_NO                    SEQUENCE_NO,
       ''                                   LINE_ITEM_NO,
          OH.OPERATION_NO                   OPERATION_NO,
       OH.CONTRACT                       CONTRACT,
       OH.PART_NO                        PART_NO,
       OH.TRANSACTION_CODE               TRANSACTION_CODE,
       OT.COST_BUCKET_ID                COST_BUCKET_ID,
       OT.COST_BUCKET_PUBLIC_TYPE       COST_BUCKET_PUBLIC_TYPE,
       OT.COMPANY                       COMPANY,
       OT.COST_SOURCE_ID                COST_SOURCE_ID,
       OT.BUCKET_POSTING_GROUP_ID       BUCKET_POSTING_GROUP_ID,
       OT.ACCOUNTING_YEAR               ACCOUNTING_YEAR,
       OT.TOTAL_COST                    LEVEL_COST,
       OT.TOTAL_COST                    ACCUM_COST,
       NULL                              CONFIGURATION_ID,
       NULL                              LOT_BATCH_NO,
       NULL                              SERIAL_NO,
       OH.WORK_CENTER_NO                 WORK_CENTER_NO,
       OH.QTY_COMPLETE                   QUANTITY,
       'OPERATION'                       ROW_TYPE,
          OH.OBJID,
          OH.OBJVERSION

FROM IFS.OPERATION_HISTORY OH
INNER JOIN IFS.OPERATION_TRANSACTION_COST OT
       ON OH.TRANSACTION_ID = OT.TRANSACTION_ID
       AND           OT.ActInd = 'Y'
INNER JOIN IFS.WORK_CENTER WC
       ON  OH.WORK_CENTER_NO = WC.WORK_CENTER_NO
       AND    OH.CONTRACT       = WC.CONTRACT
       AND    WC.ActInd     = 'Y'
WHERE  OH.ActInd            = 'Y'    
       AND   UPPER(WC.WORK_CENTER_CODE_DB) = 'I'
       AND   UPPER(OH.ORDER_TYPE) = 'SHOP ORDER'
       AND   UPPER(OH.TRANSACTION_CODE) IN ('LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH')
UNION ALL
SELECT /*+ ORDERED USE_NL(OTC) INDEX (OTC OPERATION_TRANSACTION_COST_PK) */
       OH.TRANSACTION_ID                 TRANSACTION_ID,
       OH.ACCOUNTING_ID                  ACCOUNTING_ID,
       OH.DATED                          DATE_CREATED,
       OH.ORDER_NO                       ORDER_NO,
       OH.RELEASE_NO                     RELEASE_NO,
       OH.SEQUENCE_NO                    SEQUENCE_NO,
       ''                   LINE_ITEM_NO,
       OH.OPERATION_NO                   OPERATION_NO,
      OH.CONTRACT                       CONTRACT,
       OH.PART_NO                        PART_NO,
       OH.TRANSACTION_CODE               TRANSACTION_CODE,
       OT.COST_BUCKET_ID                COST_BUCKET_ID,
       OT.COST_BUCKET_PUBLIC_TYPE       COST_BUCKET_PUBLIC_TYPE,
       OT.COMPANY                       COMPANY,
       OT.COST_SOURCE_ID                COST_SOURCE_ID,
       OT.BUCKET_POSTING_GROUP_ID       BUCKET_POSTING_GROUP_ID,
       OT.ACCOUNTING_YEAR               ACCOUNTING_YEAR,
       -OT.TOTAL_COST                   LEVEL_COST,
       -OT.TOTAL_COST                   ACCUM_COST,
       NULL                              CONFIGURATION_ID,
       NULL                              LOT_BATCH_NO,
       NULL                              SERIAL_NO,
       OH.WORK_CENTER_NO                 WORK_CENTER_NO,
          --WC.WORK_CENTER_CODE                        ,
       -OH.QTY_COMPLETE                  QUANTITY,
       'OPERATION'                       ROW_TYPE,
          OH.OBJID                       AS                   OBJID,
          OH.OBJVERSION           AS                   OBJVERSION
FROM IFS.OPERATION_HISTORY OH
INNER JOIN IFS.OPERATION_TRANSACTION_COST OT
       ON OH.TRANSACTION_ID = OT.TRANSACTION_ID
       AND           OT.ActInd = 'Y'
INNER JOIN IFS.WORK_CENTER WC
       ON  OH.WORK_CENTER_NO = WC.WORK_CENTER_NO
       AND    OH.CONTRACT       = WC.CONTRACT
       AND    WC.ActInd     = 'Y'
WHERE  OH.ActInd            = 'Y'    
AND   UPPER(WC.WORK_CENTER_CODE_DB) = 'I'
AND   UPPER(OH.ORDER_TYPE) = 'SHOP ORDER'
AND   UPPER(OH.TRANSACTION_CODE) IN ('UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH')
UNION ALL
SELECT /*+ ORDERED USE_NL(OTC) INDEX (OTC OPERATION_TRANSACTION_COST_PK) */
       OH.TRANSACTION_ID                 TRANSACTION_ID,
       OH.ACCOUNTING_ID                  ACCOUNTING_ID,
       OH.DATED                          DATE_CREATED,
       OH.ORDER_NO                       ORDER_NO,
       OH.RELEASE_NO                     RELEASE_NO,
       OH.SEQUENCE_NO                    SEQUENCE_NO,
       ''                                       LINE_ITEM_NO,
       OH.OPERATION_NO                   OPERATION_NO,
       OH.CONTRACT                       CONTRACT,
       OH.PART_NO                        PART_NO,
       OH.TRANSACTION_CODE               TRANSACTION_CODE,
       OT.COST_BUCKET_ID                 COST_BUCKET_ID,
       OT.COST_BUCKET_PUBLIC_TYPE        COST_BUCKET_PUBLIC_TYPE,
       OT.COMPANY                        COMPANY,
       OT.COST_SOURCE_ID                 COST_SOURCE_ID,
       OT.BUCKET_POSTING_GROUP_ID        BUCKET_POSTING_GROUP_ID,
       OT.ACCOUNTING_YEAR                ACCOUNTING_YEAR,
       CASE WHEN OH.TRANSACTION_CODE IN ('SUBCONDIF', 'UNSUBCONTR') THEN -OT.TOTAL_COST ELSE OT.TOTAL_COST END AS LEVEL_COST,
          CASE WHEN OH.TRANSACTION_CODE IN ('SUBCONDIF', 'UNSUBCONTR') THEN -OT.TOTAL_COST ELSE OT.TOTAL_COST END AS ACCUM_COST,
       NULL                              CONFIGURATION_ID,
       NULL                              LOT_BATCH_NO,
       NULL                              SERIAL_NO,
       OH.WORK_CENTER_NO                 WORK_CENTER_NO,
           CASE WHEN OH.TRANSACTION_CODE IN ('SUBCONDIF', 'UNSUBCONTR') THEN -OH.QTY_COMPLETE ELSE OH.QTY_COMPLETE END AS ACCUM_COST,
       'SUBCONTRACTING'                  ROW_TYPE,
      OH.OBJID,
         OH.OBJVERSION
         --OH.REVERSED_FLAG
       
          FROM IFS.OPERATION_HISTORY OH
INNER JOIN IFS.OPERATION_TRANSACTION_COST OT
       ON OH.TRANSACTION_ID = OT.TRANSACTION_ID
       AND           OT.ActInd = 'Y'
INNER JOIN IFS.WORK_CENTER WC
       ON  OH.WORK_CENTER_NO = WC.WORK_CENTER_NO
       AND    OH.CONTRACT       = WC.CONTRACT
       AND    WC.ActInd     = 'Y'
WHERE  OH.ActInd            = 'Y' 
AND   UPPER(WC.WORK_CENTER_CODE_DB) = 'O'
AND   UPPER(OH.ORDER_TYPE) = 'SHOP ORDER'
AND   UPPER(OH.TRANSACTION_CODE) IN ('SUBCONTR', 'UNSUBCONTR', 'SUBCONDIF+', 'SUBCONDIF-')
AND   OH.REVERSED_FLAG_DB = 'N'
UNION ALL
SELECT /*+ ORDERED USE_NL(SOTC) INDEX (SOTC SHOP_ORDER_OH_TRANS_COST_PK) */
       SH.TRANSACTION_ID               TRANSACTION_ID,
       SH.ACCOUNTING_ID                ACCOUNTING_ID,
       SH.DATED                        DATE_CREATED,
       SO.ORDER_NO                       ORDER_NO,
       SO.RELEASE_NO                     RELEASE_NO,
       SO.SEQUENCE_NO                    SEQUENCE_NO,
       ''                                            LINE_ITEM_NO,
       ''                                     OPERATION_NO,
       SH.CONTRACT                     CONTRACT,
       SH.PART_NO                      PART_NO,
       SH.TRANSACTION_CODE             TRANSACTION_CODE,
       SC.COST_BUCKET_ID               COST_BUCKET_ID,
       SC.COST_BUCKET_PUBLIC_TYPE      COST_BUCKET_PUBLIC_TYPE,
       SC.COMPANY                      COMPANY,
       SC.COST_SOURCE_ID               COST_SOURCE_ID,
       SC.BUCKET_POSTING_GROUP_ID      BUCKET_POSTING_GROUP_ID,
       SC.ACCOUNTING_YEAR              ACCOUNTING_YEAR,
          CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END LEVEL_COST,
         CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END ACCUM_COST,

       NULL                              CONFIGURATION_ID,
       NULL                              LOT_BATCH_NO,
       NULL                              SERIAL_NO,
       NULL                              WORK_CENTER_NO,
           CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END QUANTITY,
      'GENERAL OH'                      ROW_TYPE,
        SO.OBJID           AS                         OBJID,
              SO.OBJVERSION        AS                         OBJVERSION
          --TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')                      OBJID,
       --LTRIM(LPAD(TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS'),2000))    OBJVERSION
FROM IFS.SHOP_ORD SO
INNER JOIN  IFS.SHOP_ORDER_OH_HISTORY SH
ON SH.ORDER_NO = SO.ORDER_NO AND SH.RELEASE_NO = SO.RELEASE_NO AND SH.SEQUENCE_NO = SO.SEQUENCE_NO
AND SH.ActInd = 'Y'
INNER JOIN  IFS.SHOP_ORDER_OH_TRANS_COST SC
ON    SH.TRANSACTION_ID = SC.TRANSACTION_ID
       AND SC.ActInd = 'Y'
WHERE  SO.ActInd = 'Y'
) VW