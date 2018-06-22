CREATE TABLE [MANH].[WAVE_QUEUE] (
    [SHIP_WAVE_PARM_ID] INT             NOT NULL,
    [LOGIN_USER_ID]     NVARCHAR (15)   NOT NULL,
    [WHSE]              NVARCHAR (3)    NOT NULL,
    [WAVE_TYPE]         INT             NOT NULL,
    [HOST_ID]           NVARCHAR (1000) NULL,
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
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_WAVE_QUEUE] PRIMARY KEY CLUSTERED ([WAVE_QUEUE_ID] ASC)
);

