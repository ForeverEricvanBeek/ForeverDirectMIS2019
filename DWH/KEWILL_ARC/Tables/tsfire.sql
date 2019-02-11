CREATE TABLE [KEWILL_ARC].[tsfire] (
    [tsrefc]       SMALLINT      NOT NULL,
    [tsreft]       NVARCHAR (30) NULL,
    [dosvlg]       BIGINT        NOT NULL,
    [fill20]       NVARCHAR (20) NULL,
    [tsmf20]       NVARCHAR (20) NULL,
    [tsmand]       NCHAR (1)     NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsfire] PRIMARY KEY CLUSTERED ([dosvlg] ASC, [tsrefc] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];





