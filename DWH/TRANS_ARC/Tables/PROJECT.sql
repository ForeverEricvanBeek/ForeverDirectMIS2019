CREATE TABLE [TRANS_ARC].[PROJECT] (
    [PROJECT_ID]   INT            NOT NULL,
    [DSN_ID]       INT            NULL,
    [PROJECT_CODE] VARCHAR (20)   NOT NULL,
    [PROJECT_NAME] NVARCHAR (100) NULL,
    [CREATED]      DATETIME2 (7)  NULL,
    [DESCRIPTION]  VARCHAR (200)  NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_PROJECT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PROJECT_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

