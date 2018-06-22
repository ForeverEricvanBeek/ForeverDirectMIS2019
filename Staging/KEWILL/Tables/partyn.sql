CREATE TABLE [KEWILL].[partyn] (
    [vrfilk]       INT             NOT NULL,
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [ptykd]        NVARCHAR (20)   NOT NULL,
    [ptdati]       DATETIME2 (6)   NOT NULL,
    [vrvolg]       TINYINT         NOT NULL,
    [vrvrdt]       TINYINT         NOT NULL,
    [eindvr]       NUMERIC (13, 3) NULL,
    [vrauil]       NUMERIC (13, 3) NULL,
    [tsinnr]       BIGINT          NULL,
    [ref02]        NVARCHAR (5)    NULL,
    [brgew]        NUMERIC (14, 3) NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [tsgron]       NUMERIC (13, 3) NULL,
    [tsgrob]       NUMERIC (13, 3) NULL,
    [tsgonn]       NUMERIC (13, 3) NULL,
    [inkprs]       NUMERIC (13, 3) NULL,
    [tsonbr]       NUMERIC (13, 3) NULL,
    [tsonnt]       NUMERIC (13, 3) NULL,
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
    [tsrtyp]       NVARCHAR (10)   NULL,
    [tsrman]       NVARCHAR (20)   NULL,
    [vdscod]       NVARCHAR (3)    NULL,
    [tsdokn]       NVARCHAR (20)   NULL,
    [tspstn]       SMALLINT        NULL,
    [tskaaf]       NVARCHAR (10)   NULL,
    [vrdkdj]       DATETIME2 (6)   NULL,
    [clando]       NVARCHAR (3)    NULL,
    [vrldhk]       NVARCHAR (3)    NULL,
    [levcon]       SMALLINT        NULL,
    [ref01]        NVARCHAR (10)   NULL,
    [tsinmd]       NVARCHAR (1)    NULL,
    [tsopnr]       BIGINT          NULL,
    [tsoprg]       INT             NULL,
    [likprs]       NUMERIC (15, 2) NULL,
    [tsikvk]       NVARCHAR (3)    NULL,
    [tsppit]       NUMERIC (19, 9) NULL,
    [vrkstg]       NUMERIC (10, 2) NULL,
    [tsvkvk]       NVARCHAR (3)    NULL,
    [verzks]       NUMERIC (13, 2) NULL,
    [tsvzvk]       NVARCHAR (3)    NULL,
    [tsinin]       NUMERIC (15, 2) NULL,
    [tsinvk]       NVARCHAR (3)    NULL,
    [tsmf20]       NVARCHAR (20)   NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tailor filler 20  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsmf20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'curr code othr costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsinvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'other costs       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsinin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code INS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsvzvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'insurance costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'verzks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code FRG ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsvkvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commod.freight costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrkstg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'value per package ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsppit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code PUR ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsikvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'latest purch.price', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'likprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'task line         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsoprg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'task number       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsopnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'indication module ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsinmd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference one', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'ref01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'terms of  delivery', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'levcon';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country of dispat.vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrldhk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country code origin', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'clando';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document date YY  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrdkdj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'office of issue   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tskaaf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'item no. prec.doc ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tspstn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding doc.no. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsdokn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding documentcd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vdscod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'RMA alpha number  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsrman';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'return type       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsrtyp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsuco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsuco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsuco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds desp. pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsuco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc4  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsoco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc3  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsoco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc2  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsoco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in gds recpt pc1  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsoco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 4       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tswco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 3       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tswco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tswco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 1       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tswco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett in despatch  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsiunt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gr. in despatch   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsiubr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfd          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsgeln';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfd         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsgelb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.desp. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vratpr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ntt. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsonnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gro. in gds recpt ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsonbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reserved purchase', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'inkprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nett rfr          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsgonn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross rfr         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsgrob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'res.for gds.recpt.ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsgron';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'brgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference two', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'ref02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'incoming stockno  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'tsinnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in goods despatch ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrauil';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'closing stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'eindvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of stock     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrvrdt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date follow up cd vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrvolg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date of lot', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'ptdati';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'ptykd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'rnropd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'partyn', @level2type = N'COLUMN', @level2name = N'vrfilk';

