CREATE TABLE [KEWILL].[vrdloc] (
    [vrfilk]       INT             NOT NULL,
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [magkd]        NVARCHAR (4)    NOT NULL,
    [lockd]        NVARCHAR (6)    NOT NULL,
    [vrvrdt]       TINYINT         NOT NULL,
    [eindvr]       NUMERIC (13, 3) NULL,
    [vrauil]       NUMERIC (13, 3) NULL,
    [wgodat]       DATETIME2 (6)   NULL,
    [wgadat]       DATETIME2 (6)   NULL,
    [brgew]        NUMERIC (14, 3) NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [inkprs]       NUMERIC (13, 3) NULL,
    [tsonbr]       NUMERIC (13, 3) NULL,
    [tsonnt]       NUMERIC (13, 3) NULL,
    [tsgron]       NUMERIC (13, 3) NULL,
    [tsgrob]       NUMERIC (13, 3) NULL,
    [tsgonn]       NUMERIC (13, 3) NULL,
    [vratpr]       NUMERIC (13, 3) NULL,
    [tsgelb]       NUMERIC (13, 3) NULL,
    [tsgeln]       NUMERIC (13, 3) NULL,
    [tsiubr]       NUMERIC (13, 3) NULL,
    [tsiunt]       NUMERIC (13, 3) NULL,
    [tswco1]       NUMERIC (13, 3) NULL,
    [tswco2]       NUMERIC (13, 3) NULL,
    [tswco3]       NUMERIC (13, 3) NULL,
    [tswco4]       NUMERIC (13, 3) NULL,
    [tsoco1]       NUMERIC (13, 3) NULL,
    [tsoco2]       NUMERIC (13, 3) NULL,
    [tsoco3]       NUMERIC (13, 3) NULL,
    [tsoco4]       NUMERIC (13, 3) NULL,
    [tsuco1]       NUMERIC (13, 3) NULL,
    [tsuco2]       NUMERIC (13, 3) NULL,
    [tsuco3]       NUMERIC (13, 3) NULL,
    [tsuco4]       NUMERIC (13, 3) NULL,
    [tsuiev]       NUMERIC (13, 3) NULL,
    [tsreev]       NUMERIC (13, 3) NULL,
    [fill20]       NVARCHAR (20)   NULL,
    [tsmf20]       NVARCHAR (20)   NULL,
    [tsuic1]       NUMERIC (13, 3) NULL,
    [tsuic2]       NUMERIC (13, 3) NULL,
    [tsuic3]       NUMERIC (13, 3) NULL,
    [tsuic4]       NUMERIC (13, 3) NULL,
    [tsuibr]       NUMERIC (13, 3) NULL,
    [tsuint]       NUMERIC (13, 3) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_vrdloc] PRIMARY KEY CLUSTERED ([vrfilk] ASC, [rnropd] ASC, [artkd] ASC, [magkd] ASC, [lockd] ASC, [vrvrdt] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL]
) ON [DWH_KEWILL];






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated nett    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuint';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated gross   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuibr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated pc 4    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuic4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated pc 3    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuic3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated pc 2    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuic2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated pc 1    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuic1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tailor filler 20  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsmf20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-20', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'fill20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'remaining stock   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsreev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'allocated stock   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuiev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsuco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsoco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsoco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsoco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsoco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 4       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tswco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 3       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tswco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tswco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 1       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tswco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett in despatch  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsiunt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gr. in despatch   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsiubr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfd          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsgeln';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfd         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsgelb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.desp. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'vratpr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfr          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsgonn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfr         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsgrob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.recpt.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsgron';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ntt. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsonnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gro. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'tsonbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reserved purchase', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'inkprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'brgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dt.mod issue goods', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'wgadat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dt.mod.receipt goods', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'wgodat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in goods despatch ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'vrauil';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'closing stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'eindvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of stock     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'vrvrdt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'location code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'lockd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'warehouse code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'magkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'rnropd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrdloc', @level2type = N'COLUMN', @level2name = N'vrfilk';

