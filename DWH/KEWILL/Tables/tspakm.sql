CREATE TABLE [KEWILL].[tspakm] (
    [vrfilk]       INT             NOT NULL,
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [ptykd]        NVARCHAR (20)   NOT NULL,
    [ptdati]       DATETIME2 (6)   NOT NULL,
    [vrvolg]       TINYINT         NOT NULL,
    [vrvrdt]       TINYINT         NOT NULL,
    [tskenm]       SMALLINT        NOT NULL,
    [tsiitp]       TINYINT         NULL,
    [tsvkeu]       NVARCHAR (20)   NULL,
    [tsvken]       NUMERIC (19, 5) NULL,
    [tsvked]       DATETIME2 (6)   NULL,
    [tsvket]       TIME (4)        NULL,
    [tsvkec]       NCHAR (1)       NULL,
    [tsprnm]       NUMERIC (19, 5) NULL,
    [fill31]       NVARCHAR (31)   NULL,
    [tsiwrd]       NVARCHAR (20)   NULL,
    [tsvkex]       NVARCHAR (60)   NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tspakm] PRIMARY KEY CLUSTERED ([artkd] ASC, [Eff_Date] ASC, [ptdati] ASC, [ptykd] ASC, [rnropd] ASC, [tskenm] ASC, [vrfilk] ASC, [vrvolg] ASC, [vrvrdt] ASC) ON [DWH_KEWILL]
) ON [DWH_KEWILL];




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value text    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvkex';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'internal value    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsiwrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-31', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'fill31';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pro rata number   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsprnm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value CA      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvkec';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value time    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvket';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value date    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value num     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvken';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'var value upper   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsvkeu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'indic enter type  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tsiitp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'feature type      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'tskenm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of stock     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'vrvrdt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date follow up cd vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'vrvolg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date of lot', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'ptdati';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'ptykd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'rnropd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tspakm', @level2type = N'COLUMN', @level2name = N'vrfilk';

