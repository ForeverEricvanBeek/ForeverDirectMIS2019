﻿CREATE TABLE [MANH].[WAVE_QUEUE_BKP] (
    [SHIP_WAVE_PARM_ID] INT             NOT NULL,
    [LOGIN_USER_ID]     NVARCHAR (15)   NOT NULL,
    [WHSE]              NVARCHAR (3)    NOT NULL,
    [WAVE_TYPE]         INT             NOT NULL,
    [IOR]               NVARCHAR (1000) NULL,
    [NUM_RETRIES]       INT             NOT NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)   NULL,
    [USER_ID]           NVARCHAR (15)   NULL,
    [PRTY]              INT             NOT NULL,
    [WAVE_QUEUE_ID]     INT             NOT NULL,
    [WM_VERSION_ID]     INT             NOT NULL,
    [STAT_CODE]         INT             NOT NULL,
    [TC_COMPANY_ID]     INT             NULL,
    [USER_PROFILE_ID]   INT             NOT NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_WAVE_QUEUE_BKP] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIP_WAVE_PARM_ID] ASC)
);

