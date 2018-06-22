CREATE TABLE [KEWILL].[tsartc] (
    [artkd]        NVARCHAR (45)   NOT NULL,
    [colkd]        NVARCHAR (2)    NOT NULL,
    [aanteh]       INT             NULL,
    [aantgw]       NUMERIC (14, 3) NULL,
    [gewcbm]       NUMERIC (5, 2)  NULL,
    [likprs]       NUMERIC (15, 2) NULL,
    [vrleng]       NUMERIC (5, 2)  NULL,
    [vrbree]       NUMERIC (5, 2)  NULL,
    [vrhgte]       NUMERIC (5, 2)  NULL,
    [rnropd]       INT             NOT NULL,
    [tsaco1]       NUMERIC (14, 3) NULL,
    [tsaco2]       NUMERIC (14, 3) NULL,
    [tsaco3]       NUMERIC (14, 3) NULL,
    [tsaco4]       NUMERIC (14, 3) NULL,
    [tstrco]       NVARCHAR (2)    NULL,
    [tspaJN]       NCHAR (1)       NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tsartc] PRIMARY KEY NONCLUSTERED ([rnropd] ASC, [artkd] ASC, [colkd] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet registratn.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tspaJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pkg cde calc.back ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tstrco';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pkg code 4 qty    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tsaco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pkg code 3 qty    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tsaco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pkg code 2 qty    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tsaco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pkg code 1 qty    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'tsaco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'rnropd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'height            vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'vrhgte';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'width             vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'vrbree';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'length            vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'vrleng';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'latest purch.price', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'likprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'weight CBM factor', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'gewcbm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'weight per unit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'aantgw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number per unit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'aanteh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'packages codes', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'colkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsartc', @level2type = N'COLUMN', @level2name = N'artkd';

