﻿CREATE TABLE [MANH].[SYS_CODE_TYPE] (
    [REC_TYPE]          NVARCHAR (1)   NOT NULL,
    [CODE_TYPE]         NVARCHAR (3)   NOT NULL,
    [CODE_DESC]         NVARCHAR (100) NULL,
    [SHORT_DESC]        NVARCHAR (10)  NULL,
    [MAX_CODE_ID_LEN]   SMALLINT       NOT NULL,
    [ALLOW_ADD]         NVARCHAR (1)   NULL,
    [ALLOW_DEL]         NVARCHAR (1)   NULL,
    [CHG_MISC_FLAG]     NVARCHAR (1)   NULL,
    [CHG_DTL_DESC]      NVARCHAR (1)   NULL,
    [WHSE_DEPNDT]       NVARCHAR (1)   NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)  NULL,
    [USER_ID]           NVARCHAR (15)  NULL,
    [WM_VERSION_ID]     INT            NOT NULL,
    [SYS_CODE_TYPE_ID]  INT            NOT NULL,
    [ORDER_BY]          SMALLINT       NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_MANH_SYS_CODE_TYPE] PRIMARY KEY CLUSTERED ([CODE_TYPE] ASC, [Eff_Date] ASC, [REC_TYPE] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



