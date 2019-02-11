CREATE TABLE [KEWILL].[vrarst] (
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [artoms]       NVARCHAR (30)   NULL,
    [artzk]        NVARCHAR (10)   NULL,
    [artgrf]       SMALLINT        NULL,
    [artgrs]       SMALLINT        NULL,
    [artopm]       NVARCHAR (40)   NULL,
    [statnr]       NVARCHAR (10)   NULL,
    [artafd]       BIGINT          NULL,
    [artvan]       NVARCHAR (35)   NULL,
    [artdr]        NVARCHAR (35)   NULL,
    [kdsrta]       TINYINT         NULL,
    [kdwaar]       TINYINT         NULL,
    [kdvoor]       TINYINT         NULL,
    [kdmtkl]       TINYINT         NULL,
    [kdseri]       TINYINT         NULL,
    [kdpty]        TINYINT         NULL,
    [kdnivo]       TINYINT         NULL,
    [vrdenh]       NVARCHAR (3)    NULL,
    [afmfor]       TINYINT         NULL,
    [lengtv]       NUMERIC (8, 3)  NULL,
    [breedv]       NUMERIC (8, 3)  NULL,
    [hoogtv]       NUMERIC (8, 3)  NULL,
    [eenhvp]       NVARCHAR (3)    NULL,
    [aantvp]       NUMERIC (14, 3) NULL,
    [gewivp]       NUMERIC (14, 3) NULL,
    [atprys]       NUMERIC (13, 3) NULL,
    [sirpdv]       NUMERIC (13, 3) NULL,
    [kdbtw]        TINYINT         NULL,
    [kdomzt]       TINYINT         NULL,
    [kdaflp]       TINYINT         NULL,
    [wr1dat]       DATETIME2 (7)   NULL,
    [sagnr]        NVARCHAR (22)   NULL,
    [vrbrug]       NUMERIC (10, 4) NULL,
    [vrnetg]       NUMERIC (10, 4) NULL,
    [vrsta1]       NVARCHAR (4)    NULL,
    [vrprgr]       NVARCHAR (4)    NULL,
    [vrldor]       NVARCHAR (3)    NULL,
    [vrkwad]       TINYINT         NULL,
    [brunet]       NUMERIC (5, 2)  NULL,
    [vrfm25]       NVARCHAR (25)   NULL,
    [btwkd]        TINYINT         NULL,
    [tsstbh]       TINYINT         NULL,
    [tsonck]       NVARCHAR (2)    NULL,
    [tsndad]       TINYINT         NULL,
    [tsugck]       NVARCHAR (2)    NULL,
    [comkod]       NVARCHAR (4)    NULL,
    [dagvry]       SMALLINT        NULL,
    [tsbwlb]       SMALLINT        NULL,
    [tsnvrd]       TINYINT         NULL,
    [tsrnsn]       TINYINT         NULL,
    [tsdtau]       TINYINT         NULL,
    [asbocd]       TINYINT         NULL,
    [ascsac]       TINYINT         NULL,
    [tseco1]       NVARCHAR (2)    NULL,
    [tseco2]       NVARCHAR (2)    NULL,
    [tseco3]       NVARCHAR (2)    NULL,
    [tseco4]       NVARCHAR (2)    NULL,
    [tsvdav]       NVARCHAR (3)    NULL,
    [tsvdvp]       NVARCHAR (3)    NULL,
    [tsdppc]       NVARCHAR (2)    NULL,
    [tsdvin]       NCHAR (1)       NULL,
    [tsmenv]       TINYINT         NULL,
    [tsexsg]       NVARCHAR (22)   NULL,
    [tsacck]       NVARCHAR (4)    NULL,
    [tsalpc]       NUMERIC (5, 2)  NULL,
    [aseann]       BIGINT          NULL,
    [tscksb]       NVARCHAR (2)    NULL,
    [tspksb]       NCHAR (1)       NULL,
    [tsrmaa]       INT             NULL,
    [tsrtyp]       NVARCHAR (10)   NULL,
    [tsunnr]       SMALLINT        NULL,
    [tssuff]       SMALLINT        NULL,
    [fill03]       NVARCHAR (3)    NULL,
    [tstpoc]       TINYINT         NULL,
    [tsstep]       NCHAR (1)       NULL,
    [fill10]       NVARCHAR (10)   NULL,
    [tsarts]       SMALLINT        NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_vrarst] PRIMARY KEY CLUSTERED ([rnropd] ASC, [artkd] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL]
) ON [DWH_KEWILL];






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article status    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsarts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-10', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'fill10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stackable unit    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsstep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of calculat. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tstpoc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-03', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'fill03';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'un suffix         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tssuff';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'un danger. goods  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsunnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'return type       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsrtyp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'RMA handling      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsrmaa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet stackg.cde ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tspksb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stacking pkg code ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tscksb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'EAN number        as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'aseann';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'alcohol perc.     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsalpc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'excise code       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsacck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'export Sagitta nr.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsexsg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'method entry valuets', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsmenv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'display value inf ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsdvin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'despatch pack codets', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsdppc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vdoc upgr.product ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsvdvp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vdoc active upgr. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsvdav';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unit pkg code 4   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tseco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unit pkg code 3   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tseco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unit pkg code 2   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tseco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unit pkg code 1   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tseco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'CSA code          as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'ascsac';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'BOE code          as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'asbocd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'automatic date    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsdtau';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'snr.reg.level     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsrnsn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock reg. level  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsnvrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'storage chg.basis ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsbwlb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'days free storage', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'dagvry';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code commodity items', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'comkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'outg.pkg code     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsugck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'further indic.    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsndad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'receipt pkg code  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsonck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stacking          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'tsstbh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vat code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'btwkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'fill.cstr.prog-25 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrfm25';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross-net factor', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'brunet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reval.cd.depo.del.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrkwad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country of origin vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrldor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'price group       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrprgr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ctrl. code stat 1 vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrsta1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight        vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrnetg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight      vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrbrug';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commodity code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'sagnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'introduction date ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'wr1dat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code decreasing art', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdaflp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code count turnover', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdomzt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code vat', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdbtw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'simulated price per', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'sirpdv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'price per', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'atprys';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'weight p/packing un.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'gewivp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number p/packing un.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'aantvp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'packing unit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'eenhvp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock height', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'hoogtv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock width', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'breedv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock length', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'lengtv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'per item/pack.unit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'afmfor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stock unit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'vrdenh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sort code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdnivo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code lots', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdpty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code serial numbers', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdseri';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number of decim.  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdmtkl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code article set', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdvoor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code valuation  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdwaar';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'kdsrta';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'replace by article', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artdr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'replacement of art.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artvan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'charge cd storage', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artafd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type indication   vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'statnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article remark', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artopm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article group     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artgrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'financial group', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artgrf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'search key article', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artzk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'internal description', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artoms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarst', @level2type = N'COLUMN', @level2name = N'rnropd';

