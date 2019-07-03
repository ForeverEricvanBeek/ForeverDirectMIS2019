CREATE TABLE [MFV].[Articles] (
    [ArticleID]             INT           NOT NULL,
    [ArticleCode]           VARCHAR (255) NULL,
    [ArticleDescription]    VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED ([ArticleID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

