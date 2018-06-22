CREATE TABLE [KEWILL].[tsfire] (
    [tsrefc]       SMALLINT      NOT NULL,
    [tsreft]       NVARCHAR (30) NULL,
    [dosvlg]       BIGINT        NOT NULL,
    [fill20]       NVARCHAR (20) NULL,
    [tsmf20]       NVARCHAR (20) NULL,
    [tsmand]       NCHAR (1)     NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsfire] PRIMARY KEY NONCLUSTERED ([dosvlg] ASC, [tsrefc] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'mandatory Y/N     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'tsmand';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tailor filler 20  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'tsmf20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-20', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'fill20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment-sequence-nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'dosvlg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference text    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'tsreft';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference code    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsfire', @level2type = N'COLUMN', @level2name = N'tsrefc';

