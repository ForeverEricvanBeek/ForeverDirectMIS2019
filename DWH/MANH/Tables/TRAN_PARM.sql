﻿CREATE TABLE [MANH].[TRAN_PARM] (
    [PGM_ID]                  NVARCHAR (200) NOT NULL,
    [FROM_POSN]               INT            NOT NULL,
    [TO_POSN]                 INT            NOT NULL,
    [PARM_DESC]               NVARCHAR (50)  NULL,
    [LITRL]                   NVARCHAR (25)  NULL,
    [MANDT_FLAG]              NVARCHAR (1)   NULL,
    [VALID_CODE]              NVARCHAR (1)   NULL,
    [VALID_SYS_CODE_REC_TYPE] NVARCHAR (1)   NULL,
    [VALID_SYS_CODE_TYPE]     NVARCHAR (3)   NULL,
    [VALID_FROM]              NVARCHAR (5)   NULL,
    [VALID_TO]                NVARCHAR (5)   NULL,
    [VALID_VALUES]            NVARCHAR (50)  NULL,
    [EDIT_STYLE]              NVARCHAR (4)   NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]           DATETIME2 (7)  NULL,
    [USER_ID]                 NVARCHAR (15)  NULL,
    [TRAN_PARM_ID]            INT            NOT NULL,
    [WM_VERSION_ID]           INT            NOT NULL,
    [PARM_ID]                 INT            NULL,
    [PARM_KEY]                NVARCHAR (50)  NULL,
    [CREATED_DTTM]            DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM]       DATETIME2 (7)  NULL,
    [Eff_Date]                DATE           NOT NULL,
    [End_Date]                DATE           NULL,
    [ActInd]                  CHAR (1)       NULL,
    [IsDeleted]               CHAR (1)       NULL,
    [BatchID]                 BIGINT         NULL,
    [ProcessLogID]            BIGINT         NULL,
    CONSTRAINT [PK_MANH_TRAN_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TRAN_PARM_ID] ASC)
);

