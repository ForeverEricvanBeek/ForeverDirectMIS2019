﻿CREATE TABLE [MANH].[PROD_TRKG_TRAN] (
    [TRAN_TYPE]         NVARCHAR (3)    NOT NULL,
    [TRAN_CODE]         NVARCHAR (3)    NOT NULL,
    [TRAN_NBR]          INT             NOT NULL,
    [SEQ_NBR]           INT             NOT NULL,
    [WHSE]              NVARCHAR (3)    NULL,
    [CNTR_NBR]          NVARCHAR (50)   NULL,
    [WAVE_NBR]          NVARCHAR (12)   NULL,
    [PKT_CTRL_NBR]      NVARCHAR (10)   NULL,
    [PKT_SEQ_NBR]       INT             NOT NULL,
    [WORK_TYPE]         NVARCHAR (3)    NULL,
    [NBR_OF_CASES]      INT             NOT NULL,
    [NBR_UNITS]         NUMERIC (13, 5) NOT NULL,
    [NBR_OF_PIKS]       INT             NOT NULL,
    [NBR_SCAN]          INT             NOT NULL,
    [FROM_LOCN]         NVARCHAR (10)   NULL,
    [TO_LOCN]           NVARCHAR (10)   NULL,
    [WKSTN_ID]          NVARCHAR (10)   NULL,
    [RSN_CODE]          NVARCHAR (2)    NULL,
    [REF_CODE_ID_1]     NVARCHAR (3)    NULL,
    [REF_FIELD_1]       NVARCHAR (50)   NULL,
    [REF_CODE_ID_2]     NVARCHAR (3)    NULL,
    [REF_FIELD_2]       NVARCHAR (50)   NULL,
    [REF_CODE_ID_3]     NVARCHAR (3)    NULL,
    [REF_FIELD_3]       NVARCHAR (50)   NULL,
    [REF_CODE_ID_4]     NVARCHAR (3)    NULL,
    [REF_FIELD_4]       NVARCHAR (50)   NULL,
    [REF_CODE_ID_5]     NVARCHAR (3)    NULL,
    [REF_FIELD_5]       NVARCHAR (50)   NULL,
    [OLD_STAT_CODE]     SMALLINT        NOT NULL,
    [NEW_STAT_CODE]     SMALLINT        NOT NULL,
    [SAM]               NUMERIC (9, 4)  NOT NULL,
    [BEGIN_DATE]        DATETIME2 (7)   NULL,
    [END_DATE]          DATETIME2 (7)   NULL,
    [STAT_CODE]         SMALLINT        NOT NULL,
    [MODULE_NAME]       NVARCHAR (10)   NULL,
    [MENU_OPTN_NAME]    NVARCHAR (40)   NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)   NULL,
    [USER_ID]           NVARCHAR (15)   NULL,
    [PLT_ID]            NVARCHAR (50)   NULL,
    [TASK_ID]           INT             NULL,
    [CD_MASTER_ID]      INT             NOT NULL,
    [PROD_TRKG_TRAN_ID] INT             NOT NULL,
    [WM_VERSION_ID]     INT             NOT NULL,
    [ITEM_ID]           BIGINT          NULL,
    [TASK_HDR_ID]       INT             NOT NULL,
    [TO_LOCN_HDR_ID]    INT             NULL,
    [TC_ORDER_ID]       NVARCHAR (50)   NULL,
    [LINE_ITEM_ID]      BIGINT          NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_PROD_TRKG_TRAN] PRIMARY KEY CLUSTERED ([PROD_TRKG_TRAN_ID] ASC) WITH (DATA_COMPRESSION = PAGE)
);




GO
CREATE NONCLUSTERED INDEX [NI_PROD_TRKG_TRAN_LINE_ID]
    ON [MANH].[PROD_TRKG_TRAN]([LINE_ITEM_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [PK_MANH_PROD_TRKG_TRAN_MENU_OPTN_NAME]
    ON [MANH].[PROD_TRKG_TRAN]([MENU_OPTN_NAME] ASC);


GO
CREATE NONCLUSTERED INDEX [PK_MANH_PROD_TRKG_TRAN_CNTR_NBR]
    ON [MANH].[PROD_TRKG_TRAN]([CNTR_NBR] ASC);

