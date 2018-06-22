CREATE TABLE [KEWILL].[vrfvrd] (
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [vrfilk]       SMALLINT        NOT NULL,
    [vrvrdt]       TINYINT         NOT NULL,
    [kstprs]       NUMERIC (12, 2) NULL,
    [sikstp]       NUMERIC (12, 2) NULL,
    [inkopv]       NUMERIC (13, 3) NULL,
    [verkpv]       NUMERIC (13, 3) NULL,
    [magopv]       NUMERIC (13, 3) NULL,
    [eindvr]       NUMERIC (13, 3) NULL,
    [vratgr]       NUMERIC (13, 3) NULL,
    [vratpr]       NUMERIC (13, 3) NULL,
    [verkrs]       NUMERIC (13, 3) NULL,
    [inkprs]       NUMERIC (13, 3) NULL,
    [atakvj]       NUMERIC (13, 3) NULL,
    [vrdnvk]       NUMERIC (13, 3) NULL,
    [wrdvrd]       NUMERIC (12, 2) NULL,
    [cumvkw]       NUMERIC (12, 2) NULL,
    [cumikw]       NUMERIC (12, 2) NULL,
    [wr1dat]       DATETIME2 (6)   NULL,
    [wkpdat]       DATETIME2 (6)   NULL,
    [wmodat]       DATETIME2 (6)   NULL,
    [wgodat]       DATETIME2 (6)   NULL,
    [wgadat]       DATETIME2 (6)   NULL,
    [atikvj]       NUMERIC (13, 3) NULL,
    [atik2j]       NUMERIC (13, 3) NULL,
    [atvkvj]       NUMERIC (13, 3) NULL,
    [atvk2j]       NUMERIC (13, 3) NULL,
    [atak2j]       NUMERIC (13, 3) NULL,
    [magkd]        NVARCHAR (4)    NULL,
    [lockd]        NVARCHAR (6)    NULL,
    [fill20]       NVARCHAR (20)   NULL,
    [vrauil]       NUMERIC (13, 3) NULL,
    [vrinor]       NUMERIC (13, 3) NULL,
    [brgew]        NUMERIC (13, 3) NULL,
    [ntgew]        NUMERIC (13, 3) NULL,
    [tsonbr]       NUMERIC (13, 3) NULL,
    [tstont]       NUMERIC (13, 3) NULL,
    [tstobr]       NUMERIC (13, 3) NULL,
    [tsgron]       NUMERIC (13, 3) NULL,
    [tsgrob]       NUMERIC (13, 3) NULL,
    [tsgonn]       NUMERIC (13, 3) NULL,
    [tsonnt]       NUMERIC (13, 3) NULL,
    [tstlnt]       NUMERIC (13, 3) NULL,
    [tsgelb]       NUMERIC (13, 3) NULL,
    [tsgeln]       NUMERIC (13, 3) NULL,
    [tsiubr]       NUMERIC (13, 3) NULL,
    [tsiunt]       NUMERIC (13, 3) NULL,
    [tsbabr]       NUMERIC (13, 3) NULL,
    [tsbant]       NUMERIC (13, 3) NULL,
    [tsdgbr]       NUMERIC (13, 3) NULL,
    [tsdgnt]       NUMERIC (13, 3) NULL,
    [tsvnbr]       NUMERIC (13, 3) NULL,
    [tsvnnt]       NUMERIC (13, 3) NULL,
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
    [tskrev]       NUMERIC (13, 3) NULL,
    [tskrnt]       NUMERIC (13, 3) NULL,
    [tskrbr]       NUMERIC (13, 3) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_vrfvrd] PRIMARY KEY NONCLUSTERED ([vrfilk] ASC, [rnropd] ASC, [artkd] ASC, [vrvrdt] ASC, [Eff_Date] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'critical gro.wgt  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tskrbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'critical nett wgt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tskrnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'critical tech.sto.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tskrev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsuco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsuco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsuco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsuco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsoco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsoco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsoco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsoco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 4       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tswco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 3       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tswco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tswco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 1       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tswco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'techn.n-sale.net  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsvnnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'techn.n-sale.gro. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsvnbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'qty dier.res.net  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsdgnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'qty dir.res.gro.  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsdgbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nr.back ord.nett  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsbant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nr.back ord.gross ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsbabr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett in despatch  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsiunt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gr. in despatch   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsiubr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfd          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsgeln';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfd         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsgelb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett for despatch ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tstlnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ntt. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsonnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfr          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsgonn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfr         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsgrob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.recpt.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsgron';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gro.for receipt   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tstobr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net for receipt   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tstont';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gro. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'tsonbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'brgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'qty in quote      vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vrinor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in goods despatch ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vrauil';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-20', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'fill20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'location code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'lockd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'warehouse code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'magkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'atl te ontv fakt  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atak2j';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sales two yrs. ago', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atvk2j';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sales last year', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atvkvj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'purchases 2 yrs. ago', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atik2j';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'purchases last year', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atikvj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dt.mod issue goods', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wgadat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dt.mod.receipt goods', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wgodat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dt. mod.stock taking', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wmodat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date modif. cost', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wkpdat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'introduction date ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wr1dat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cost value sales  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'cumikw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cum. sales value', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'cumvkw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock value', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'wrdvrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unsold stock      vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vrdnvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'num. of backordersvr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'atakvj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reserved purchase', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'inkprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reserved sales', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'verkrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.desp. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vratpr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'qty direct reserv.vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vratgr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'closing stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'eindvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock differences', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'magopv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock of sales', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'verkpv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock of purchases', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'inkopv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'simulated cost price', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'sikstp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cost price', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'kstprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of stock     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vrvrdt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'vrfilk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrfvrd', @level2type = N'COLUMN', @level2name = N'rnropd';

