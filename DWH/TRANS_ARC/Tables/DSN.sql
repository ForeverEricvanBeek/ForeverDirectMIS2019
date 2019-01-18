CREATE TABLE [TRANS_ARC].[DSN] (
    [DSN_ID]          BIGINT         NOT NULL,
    [DSN_VALUE]       VARCHAR (50)   NULL,
    [DSN_NAME]        NVARCHAR (100) NULL,
    [DSN_SYSTEM]      VARCHAR (50)   NULL,
    [DSN_DESCRIPTION] VARCHAR (200)  NULL,
    [DSN_IP]          VARCHAR (15)   NULL,
    [LIVE_SYSTEM]     BIT            NULL,
    [ENABLED]         BIT            NULL,
    [CREATED]         DATETIME       NULL,
    [MODIFIED]        DATETIME       NULL,
    [Eff_Date]        DATE           NOT NULL,
    [End_Date]        DATE           NULL,
    [ActInd]          CHAR (1)       NULL,
    [IsDeleted]       CHAR (1)       NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_DSN] PRIMARY KEY CLUSTERED ([DSN_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



