CREATE TABLE [TRANS_ARC].[CATEGORY] (
    [CATEGORY]             VARCHAR (20)  NOT NULL,
    [CATEGORY_DESCRIPTION] VARCHAR (200) NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED ([CATEGORY] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





