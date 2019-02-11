CREATE TABLE [KEWILL].[vrarsf] (
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [vrfilk]       SMALLINT        NOT NULL,
    [minvr]        NUMERIC (13, 3) NULL,
    [maxvr]        NUMERIC (13, 3) NULL,
    [levtyd]       SMALLINT        NULL,
    [veilmg]       SMALLINT        NULL,
    [vrinlm]       SMALLINT        NULL,
    [vropim]       NCHAR (1)       NULL,
    [vrvsoi]       SMALLINT        NULL,
    [vrkpr1]       NUMERIC (12, 2) NULL,
    [vrkpr2]       NUMERIC (12, 2) NULL,
    [vrkpr3]       NUMERIC (12, 2) NULL,
    [sivrkp]       NUMERIC (12, 2) NULL,
    [sivrk2]       NUMERIC (12, 2) NULL,
    [sivrk3]       NUMERIC (12, 2) NULL,
    [kdcour]       TINYINT         NULL,
    [kdabca]       NVARCHAR (1)    NULL,
    [vrabcp]       NUMERIC (10, 6) NULL,
    [verkop]       NVARCHAR (8)    NULL,
    [inkopr]       NVARCHAR (8)    NULL,
    [vrkdpr]       NCHAR (1)       NULL,
    [vrkddl]       TINYINT         NULL,
    [rglhis]       INT             NULL,
    [vrfm10]       NVARCHAR (10)   NULL,
    [tssplv]       NCHAR (1)       NULL,
    [tsdppc]       NVARCHAR (2)    NULL,
    [tsdifp]       NUMERIC (5, 2)  NULL,
    [tsdifa]       NUMERIC (15, 2) NULL,
    [tscycm]       TINYINT         NULL,
    [tsdefa]       NCHAR (1)       NULL,
    [tsprjn]       NCHAR (1)       NULL,
    [tsleve]       BIGINT          NULL,
    [tsbsgr]       NUMERIC (13, 3) NULL,
    [magkd]        NVARCHAR (4)    NULL,
    [lockd]        NVARCHAR (6)    NULL,
    [tsvpck]       NVARCHAR (2)    NULL,
    [tsmavp]       NUMERIC (13, 3) NULL,
    [tsmpvp]       NUMERIC (5, 2)  NULL,
    [tsnrep]       NUMERIC (13, 3) NULL,
    [tsprep]       NVARCHAR (2)    NULL,
    [tsrvpp]       NUMERIC (5, 2)  NULL,
    [fill25]       NVARCHAR (25)   NULL,
    [tsccmn]       NUMERIC (13, 3) NULL,
    [tsccmv]       NUMERIC (13, 3) NULL,
    [tsccfc]       SMALLINT        NULL,
    [tsabcc]       NVARCHAR (1)    NULL,
    [tsabcn]       NVARCHAR (1)    NULL,
    [tsswpt]       NCHAR (1)       NULL,
    [tsswpl]       NCHAR (1)       NULL,
    [fill01]       NVARCHAR (1)    NULL,
    [tslsct]       DATETIME2 (6)   NULL,
    [tsswdb]       NCHAR (1)       NULL,
    [tsswlf]       NCHAR (1)       NULL,
    [tsswpf]       NCHAR (1)       NULL,
    [tsswdf]       NCHAR (1)       NULL,
    [tsswlp]       NCHAR (1)       NULL,
    [tsswpp]       NCHAR (1)       NULL,
    [tsswdp]       NCHAR (1)       NULL,
    [tsckfp]       NVARCHAR (2)    NULL,
    [tspmdt]       NCHAR (1)       NULL,
    [tspmdw]       NCHAR (1)       NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_vrarsf] PRIMARY KEY CLUSTERED ([rnropd] ASC, [artkd] ASC, [vrfilk] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL]
) ON [DWH_KEWILL];






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'product mast WMS  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tspmdw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'product mast TMS  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tspmdt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'fullpick packagcd ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsckfp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch date P     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswdp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch pallet P   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswpp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch lot P      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswlp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch date F     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswdf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch pallet F   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswpf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch lot F      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswlf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch date B     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswdb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'day of last count ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tslsct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'filler01', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'fill01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch pallet B   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswpl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'switch lot B      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsswpt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'new abc class     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsabcn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'abc classificationts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsabcc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cycle full count  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsccfc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cycle min value   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsccmv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cycle min level   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsccmn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-25', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'fill25';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reversed pick percts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsrvpp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pack code replen  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsprep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'no of pack replen ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsnrep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'min.perc.transf.  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsmpvp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'min.qty oblig.    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsmavp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer pkg cde  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsvpck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'location code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'lockd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'warehouse code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'magkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'order size        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsbsgr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'supplier          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsleve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet reserv.    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsprjn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'default answer    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsdefa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cycle counting metts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tscycm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount difference ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsdifa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'percentage diff   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsdifp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'despatch pack codets', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tsdppc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'final pallet full ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'tssplv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'fill.cstr.prog-10 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrfm10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'line counter history', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'rglhis';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'art.delivery cde  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrkddl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot reserv.code   vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrkdpr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'purchaser', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'inkopr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'salesman', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'verkop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'abc percentage    vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrabcp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code abc analysis', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'kdabca';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code marketable', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'kdcour';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sim selling price 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'sivrk3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sim selling price 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'sivrk2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sim selling price 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'sivrkp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selling price 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrkpr3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selling price 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrkpr2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selling price 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrkpr1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'purchase delay    vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrvsoi';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'incl.o/s purch.   Vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vropim';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'internal leadtime vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrinlm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'safety margin', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'veilmg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lead time', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'levtyd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'maximum stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'maxvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'minimum stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'minvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'vrfilk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'vrarsf', @level2type = N'COLUMN', @level2name = N'rnropd';

