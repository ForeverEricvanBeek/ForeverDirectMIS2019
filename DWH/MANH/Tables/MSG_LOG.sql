﻿CREATE TABLE [MANH].[MSG_LOG] (
    [MSG_LOG_ID]       INT             NOT NULL,
    [MODULE]           NVARCHAR (10)   NOT NULL,
    [MSG_ID]           NVARCHAR (40)   NOT NULL,
    [PGM_ID]           NVARCHAR (40)   NULL,
    [SUB_PGM_NAME]     NVARCHAR (40)   NULL,
    [FUNC_NAME]        NVARCHAR (40)   NULL,
    [LOG_DATE_TIME]    DATETIME2 (7)   NOT NULL,
    [MSG]              NVARCHAR (512)  NULL,
    [TERMINAL]         NVARCHAR (15)   NULL,
    [OVRIDE_USER_ID]   NVARCHAR (15)   NULL,
    [ACKN_DATE_TIME]   DATETIME2 (7)   NULL,
    [CREATE_DATE_TIME] DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]    DATETIME2 (7)   NULL,
    [USER_ID]          NVARCHAR (15)   NULL,
    [REF_CODE_1]       NVARCHAR (3)    NULL,
    [REF_VALUE_1]      NVARCHAR (128)  NULL,
    [REF_CODE_2]       NVARCHAR (3)    NULL,
    [REF_VALUE_2]      NVARCHAR (128)  NULL,
    [REF_CODE_3]       NVARCHAR (3)    NULL,
    [REF_VALUE_3]      NVARCHAR (128)  NULL,
    [REF_CODE_4]       NVARCHAR (3)    NULL,
    [REF_VALUE_4]      NVARCHAR (128)  NULL,
    [REF_CODE_5]       NVARCHAR (3)    NULL,
    [REF_VALUE_5]      NVARCHAR (128)  NULL,
    [EXECUTABLE]       NVARCHAR (128)  NULL,
    [FILE_NAME]        NVARCHAR (128)  NULL,
    [METHOD]           NVARCHAR (128)  NULL,
    [CLASS]            NVARCHAR (128)  NULL,
    [MSG_ENGLISH]      NVARCHAR (512)  NULL,
    [APP_USER_ID]      NVARCHAR (15)   NULL,
    [SESSION_ID]       NVARCHAR (128)  NULL,
    [SESSION_STATE]    NVARCHAR (2048) NULL,
    [MACHINE_ID]       NVARCHAR (128)  NULL,
    [WHSE]             NVARCHAR (3)    NULL,
    [CD_MASTER_ID]     INT             NULL,
    [WM_VERSION_ID]    INT             NOT NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_MANH_MSG_LOG] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [MSG_LOG_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];





