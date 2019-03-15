﻿CREATE TABLE [MANH].[SYS_CODE_PARM] (
    [REC_TYPE]                NVARCHAR (1)  NOT NULL,
    [CODE_TYPE]               NVARCHAR (3)  NOT NULL,
    [FROM_POSN]               SMALLINT      NOT NULL,
    [TO_POSN]                 SMALLINT      NOT NULL,
    [MISC_FLAG_DESC]          NVARCHAR (50) NULL,
    [LITRL]                   NVARCHAR (25) NULL,
    [MANDT_FLAG]              NVARCHAR (1)  NULL,
    [VALID_CODE]              NVARCHAR (1)  NULL,
    [VALID_SYS_CODE_REC_TYPE] NVARCHAR (1)  NULL,
    [VALID_SYS_CODE_TYPE]     NVARCHAR (3)  NULL,
    [VALID_FROM]              NVARCHAR (5)  NULL,
    [VALID_TO]                NVARCHAR (5)  NULL,
    [VALID_VALUES]            NVARCHAR (50) NULL,
    [EDIT_STYLE]              NVARCHAR (4)  NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7) NULL,
    [MOD_DATE_TIME]           DATETIME2 (7) NULL,
    [USER_ID]                 NVARCHAR (15) NULL,
    [WM_VERSION_ID]           INT           NOT NULL,
    [SYS_CODE_PARM_ID]        INT           NOT NULL,
    [SYS_CODE_TYPE_ID]        INT           NOT NULL,
    [VALID_SYS_CODE_TYPE_ID]  INT           NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    [CREATED_DTTM]            DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM]       DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_SYS_CODE_PARM] PRIMARY KEY CLUSTERED ([CODE_TYPE] ASC, [FROM_POSN] ASC, [REC_TYPE] ASC)
);



