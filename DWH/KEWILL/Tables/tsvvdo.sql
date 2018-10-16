CREATE TABLE [KEWILL].[tsvvdo] (
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
    CONSTRAINT [PK_tsvvdo] PRIMARY KEY CLUSTERED ([dosvlg] ASC, [Eff_Date] ASC) ON [DWH_KEWILL]
) ON [DWH_KEWILL];




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-10', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'fill10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'employees initials', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'werkin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date of processing', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'tsverw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reason of removal ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'tsrevv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'splitting number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'spltnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'zendnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'job no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'reisnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dispatch code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'afh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'period number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'pernr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'department', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'afd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment-sequence-nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsvvdo', @level2type = N'COLUMN', @level2name = N'dosvlg';

