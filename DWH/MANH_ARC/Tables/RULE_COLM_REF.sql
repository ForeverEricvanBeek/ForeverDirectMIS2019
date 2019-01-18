﻿CREATE TABLE [MANH_ARC].[RULE_COLM_REF] (
    [RULE_TYPE]          NVARCHAR (4)  NOT NULL,
    [COLM_REF_SEQ_NBR]   INT           NOT NULL,
    [SEL_SEQ_FLAG]       NVARCHAR (1)  NULL,
    [RULE_COLM_ID]       INT           NOT NULL,
    [DISP_SEQ]           INT           NOT NULL,
    [CREATE_DATE_TIME]   DATETIME2 (7) NULL,
    [MOD_DATE_TIME]      DATETIME2 (7) NULL,
    [USER_ID]            NVARCHAR (15) NULL,
    [RULE_MODE]          NVARCHAR (1)  NULL,
    [WORKINFO_CRIT_FLAG] INT           NOT NULL,
    [RULE_COLM_REF_ID]   INT           NOT NULL,
    [WM_VERSION_ID]      INT           NOT NULL,
    [RULE_COLM_LIST_ID]  INT           NOT NULL,
    [CREATED_DTTM]       DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]  DATETIME2 (7) NULL,
    [Eff_Date]           DATE          NOT NULL,
    [End_Date]           DATE          NULL,
    [ActInd]             CHAR (1)      NULL,
    [IsDeleted]          CHAR (1)      NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    CONSTRAINT [PK_MANH_RULE_COLM_REF] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [RULE_COLM_REF_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



