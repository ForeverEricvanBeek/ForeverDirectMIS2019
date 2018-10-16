CREATE TABLE [KEWILL_ARC].[tsvvdo] (
    [dosvlg]       BIGINT        NOT NULL,
    [afd]          NVARCHAR (4)  NULL,
    [pernr]        NVARCHAR (7)  NULL,
    [afh]          NVARCHAR (1)  NULL,
    [reisnr]       INT           NULL,
    [zendnr]       BIGINT        NULL,
    [spltnr]       TINYINT       NULL,
    [tsrevv]       NVARCHAR (40) NULL,
    [tsverw]       DATETIME2 (6) NULL,
    [werkin]       NVARCHAR (4)  NULL,
    [fill10]       NVARCHAR (10) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsvvdo] PRIMARY KEY CLUSTERED ([dosvlg] ASC, [Eff_Date] ASC) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];

