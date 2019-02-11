CREATE TABLE [KEWILL].[tsmopd] (
    [vrfilk]       SMALLINT        NOT NULL,
    [tsinmd]       NVARCHAR (1)    NOT NULL,
    [tsopnr]       BIGINT          NOT NULL,
    [tsoprg]       INT             NOT NULL,
    [dosvlg]       BIGINT          NULL,
    [regel]        INT             NULL,
    [sub]          TINYINT         NULL,
    [status]       TINYINT         NULL,
    [vmtsrt]       TINYINT         NULL,
    [boekjj]       DATETIME2 (6)   NULL,
    [tsddmu]       DATETIME2 (6)   NULL,
    [tstimu]       TIME (4)        NULL,
    [oms]          NVARCHAR (30)   NULL,
    [rnropd]       BIGINT          NULL,
    [artkd]        NVARCHAR (35)   NULL,
    [magkd]        NVARCHAR (4)    NULL,
    [lockd]        NVARCHAR (6)    NULL,
    [comkod]       NVARCHAR (4)    NULL,
    [colkd]        NVARCHAR (2)    NULL,
    [eindvr]       NUMERIC (13, 3) NULL,
    [brgew]        NUMERIC (14, 3) NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [tsvwck]       NVARCHAR (2)    NULL,
    [tsvwtv]       NUMERIC (13, 3) NULL,
    [tsvwbr]       NUMERIC (14, 3) NULL,
    [tsvwnt]       NUMERIC (14, 3) NULL,
    [vdscod]       NVARCHAR (3)    NULL,
    [tsdokn]       NVARCHAR (20)   NULL,
    [tspstn]       SMALLINT        NULL,
    [tskaaf]       NVARCHAR (10)   NULL,
    [ref01]        NVARCHAR (10)   NULL,
    [ref02]        NVARCHAR (5)    NULL,
    [tsdsts]       SMALLINT        NULL,
    [clando]       NVARCHAR (3)    NULL,
    [vrldhk]       NVARCHAR (3)    NULL,
    [clandb]       NVARCHAR (3)    NULL,
    [levcon]       SMALLINT        NULL,
    [tsvdac]       INT             NULL,
    [tsvdck]       NVARCHAR (2)    NULL,
    [likprs]       NUMERIC (15, 2) NULL,
    [tsikvk]       NVARCHAR (3)    NULL,
    [tsikkr]       NUMERIC (12, 6) NULL,
    [tsikve]       INT             NULL,
    [mudouw]       NUMERIC (14, 2) NULL,
    [valuta]       NVARCHAR (3)    NULL,
    [tsdwkr]       NUMERIC (12, 6) NULL,
    [tsdwve]       INT             NULL,
    [vrkstg]       NUMERIC (10, 2) NULL,
    [tsvkvk]       NVARCHAR (3)    NULL,
    [tsvkkr]       NUMERIC (12, 6) NULL,
    [tsvkve]       INT             NULL,
    [verzks]       NUMERIC (13, 2) NULL,
    [tsvzvk]       NVARCHAR (3)    NULL,
    [tsvzkr]       NUMERIC (12, 6) NULL,
    [tsvzve]       INT             NULL,
    [tsinin]       NUMERIC (15, 2) NULL,
    [tsinvk]       NVARCHAR (3)    NULL,
    [tsinkr]       NUMERIC (12, 6) NULL,
    [tsinve]       INT             NULL,
    [tsnopd]       BIGINT          NULL,
    [tsnpar]       NVARCHAR (20)   NULL,
    [tsnpda]       DATETIME2 (6)   NULL,
    [tsnvlg]       TINYINT         NULL,
    [tsnpad]       TINYINT         NULL,
    [tsnpaa]       NVARCHAR (35)   NULL,
    [tsnmag]       NVARCHAR (4)    NULL,
    [tsnlok]       NVARCHAR (6)    NULL,
    [tstek1]       NVARCHAR (1)    NULL,
    [tstek2]       NVARCHAR (1)    NULL,
    [tstek3]       NVARCHAR (3)    NULL,
    [tspart]       NVARCHAR (11)   NULL,
    [vrdkdj]       DATETIME2 (6)   NULL,
    [afd]          NVARCHAR (4)    NULL,
    [tsaant]       NUMERIC (13, 3) NULL,
    [tsvwaa]       NUMERIC (13, 3) NULL,
    [tspraa]       NUMERIC (13, 3) NULL,
    [tsprbr]       NUMERIC (13, 3) NULL,
    [tsprnt]       NUMERIC (13, 3) NULL,
    [tssnaa]       NUMERIC (13, 3) NULL,
    [tssnbr]       NUMERIC (13, 3) NULL,
    [tssnnt]       NUMERIC (13, 3) NULL,
    [asvsvm]       TINYINT         NULL,
    [asrbcb]       TINYINT         NULL,
    [asvvtk]       TINYINT         NULL,
    [asvkgb]       TINYINT         NULL,
    [asstst]       TINYINT         NULL,
    [astrac]       TINYINT         NULL,
    [assttw]       INT             NULL,
    [tskdaf]       TINYINT         NULL,
    [ts1nsl]       BIGINT          NULL,
    [ts2nsl]       BIGINT          NULL,
    [ts3nsl]       BIGINT          NULL,
    [ts4nsl]       BIGINT          NULL,
    [ts5nsl]       BIGINT          NULL,
    [tscapk]       INT             NULL,
    [tsexru]       NVARCHAR (6)    NULL,
    [tsivda]       DATETIME2 (6)   NULL,
    [tsivtd]       TIME (4)        NULL,
    [tsdfda]       DATETIME2 (6)   NULL,
    [tsdftd]       TIME (4)        NULL,
    [vrfitl]       INT             NULL,
    [tstrbd]       NUMERIC (14, 2) NULL,
    [tstrvk]       NVARCHAR (3)    NULL,
    [percpr]       NUMERIC (5, 2)  NULL,
    [btwkd]        INT             NULL,
    [atprys]       NUMERIC (13, 3) NULL,
    [tswdbd]       NUMERIC (14, 2) NULL,
    [tspryp]       NUMERIC (13, 3) NULL,
    [tsammg]       NVARCHAR (4)    NULL,
    [tsamlk]       NVARCHAR (6)    NULL,
    [tsvco1]       NUMERIC (13, 3) NULL,
    [tsvco2]       NUMERIC (13, 3) NULL,
    [tsvco3]       NUMERIC (13, 3) NULL,
    [tsvco4]       NUMERIC (13, 3) NULL,
    [tswco1]       NUMERIC (13, 3) NULL,
    [tswco2]       NUMERIC (13, 3) NULL,
    [tswco3]       NUMERIC (13, 3) NULL,
    [tswco4]       NUMERIC (13, 3) NULL,
    [tspain]       NUMERIC (13, 3) NULL,
    [tspaan]       NUMERIC (13, 3) NULL,
    [tspra1]       NUMERIC (13, 3) NULL,
    [tspra2]       NUMERIC (13, 3) NULL,
    [tspra3]       NUMERIC (13, 3) NULL,
    [tspra4]       NUMERIC (13, 3) NULL,
    [tspara]       NUMERIC (13, 3) NULL,
    [tspabr]       NUMERIC (13, 3) NULL,
    [tspant]       NUMERIC (13, 3) NULL,
    [tspar1]       NUMERIC (13, 3) NULL,
    [tspar2]       NUMERIC (13, 3) NULL,
    [tspar3]       NUMERIC (13, 3) NULL,
    [tspar4]       NUMERIC (13, 3) NULL,
    [tsinor]       INT             NULL,
    [tskrfk]       NUMERIC (13, 3) NULL,
    [tssmut]       TINYINT         NULL,
    [tsfkst]       TINYINT         NULL,
    [tsstcp]       TINYINT         NULL,
    [artgrs]       TINYINT         NULL,
    [tsskri]       TINYINT         NULL,
    [tsnsam]       NUMERIC (13, 3) NULL,
    [tsvdav]       NVARCHAR (3)    NULL,
    [tsvdvp]       NVARCHAR (3)    NULL,
    [tsagjn]       NCHAR (1)       NULL,
    [tsopwv]       TINYINT         NULL,
    [fill01]       NVARCHAR (1)    NULL,
    [tsinac]       NUMERIC (13, 3) NULL,
    [tsinck]       NVARCHAR (2)    NULL,
    [tsinte]       NUMERIC (13, 3) NULL,
    [tsinbg]       NUMERIC (14, 3) NULL,
    [tsinnt]       NUMERIC (14, 3) NULL,
    [tsina1]       NUMERIC (13, 3) NULL,
    [tsina2]       NUMERIC (13, 3) NULL,
    [tsina3]       NUMERIC (13, 3) NULL,
    [tsina4]       NUMERIC (13, 3) NULL,
    [tsback]       TINYINT         NULL,
    [tsbopr]       SMALLINT        NULL,
    [tscrdk]       TINYINT         NULL,
    [tsrman]       NVARCHAR (20)   NULL,
    [tsrtyp]       NVARCHAR (10)   NULL,
    [tsgdcd]       NVARCHAR (22)   NULL,
    [fill30]       NVARCHAR (30)   NULL,
    [tsmf20]       NVARCHAR (20)   NULL,
    [tsdsop]       NVARCHAR (20)   NULL,
    [tsfpex]       INT             NULL,
    [tsfpfi]       INT             NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tsmopd] PRIMARY KEY CLUSTERED ([vrfilk] ASC, [tsinmd] ASC, [tsopnr] ASC, [tsoprg] ASC, [Eff_Date] ASC) ON [DWH_KEWILL]
) ON [DWH_KEWILL];








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'full pallets fin. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsfpfi';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'full pallets exp. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsfpex';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'file warehousing  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdsop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tailor filler 20  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsmf20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Filler-30', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'fill30';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'goods code A22    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsgdcd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'return type       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsrtyp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'RMA alpha number  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsrman';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cross docking     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tscrdk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'order priority    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsbopr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'back order        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsback';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init nr.pkg 4     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsina4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.nr.pkg 3     t', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsina3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.nr.pkg 2     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsina2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.nr.pkg 1     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsina1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.nett wght    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init gross wght   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinbg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.techn.stock  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinte';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init. pkg code    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'init.nr.pkg       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinac';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'filler01', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'fill01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'on shopfloor      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsopwv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AGP admin.        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsagjn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vdoc upgr.product ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvdvp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vdoc active upgr. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvdav';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nr.req d comp.    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnsam';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'critic.cd.comp.   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsskri';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article group     vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'artgrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'status cap.plan   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsstcp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'invoicing status  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsfkst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type for vrdmut   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tssmut';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nr.with comp.     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tskrfk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'internal ord.line ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. col.4 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspar4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. col.3 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspar3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. col.2 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspar2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. col.1 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspar1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. nett  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. gross ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspabr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet res. qty   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspara';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot res. col.4    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspra4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot res. col.3    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspra3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot res. col.2    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspra2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot res. col.1    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspra1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallet quantity   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspaan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'pallets regist d  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspain';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 4       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tswco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 3       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tswco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 2       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tswco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'actual pc 1       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tswco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expected qty pc 4 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvco4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expected qty pc 3 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvco3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expected qty pc 2 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvco2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expected qty pc 1  t', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvco1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'notif.location    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsamlk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'notif.warehouse   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsammg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'price per valuatn ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspryp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'valuation amount  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tswdbd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'price per', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'atprys';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vat code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'btwkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'discount percentage', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'percpr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transaction curr. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstrvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transaction amnt  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstrbd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch delivery   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vrfitl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'time definitive   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdftd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date definitive   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdfda';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'time entry        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsivtd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date entry        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsivda';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'forwarding space  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsexru';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'capacity feature  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tscapk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code 5N ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ts5nsl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code 4N ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ts4nsl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code 3N ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ts3nsl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code 2N ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ts2nsl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'selection code 1N ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ts1nsl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code affiliates   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tskdaf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'statistical value as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'assttw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transaction       as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'astrac';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'statistics system as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'asstst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'traffic area      as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'asvkgb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transport branch  as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'asvvtk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'heading cbs       as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'asrbcb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'appearance        as', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'asvsvm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'serial reserve netts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tssnnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'serial reser grss ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tssnbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'serial reserve no ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tssnaa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot reserve net   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsprnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot reserve gross ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsprbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot reserve no    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspraa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expect num colli  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvwaa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number of colli   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsaant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'department', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'afd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document date YY  vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vrdkdj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lot number short  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspart';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'separation sign 3 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstek3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'separation sign 2 ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstek2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'separation sign   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstek1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to location       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnlok';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to warehouse      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnmag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnpaa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to stock type', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnpad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to sequential number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnvlg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to date lot', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnpda';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to lot', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnpar';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to principal', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsnopd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency unit INF ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch. INF ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinkr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'curr code othr costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'other costs       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency unit INS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvzve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch. INS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvzkr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code INS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvzvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'insurance costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'verzks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency unit FRG ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvkve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch. FRG ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvkkr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code FRG ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvkvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commod.freight costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vrkstg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency unit CUS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdwve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch. CUS ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdwkr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'valuta';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customs value     mu', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'mudouw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency unit PUR ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsikve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch. PUR ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsikkr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'currency code PUR ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsikvk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'latest purch.price', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'likprs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'colli cd accor filts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvdck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number accord doc ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvdac';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'terms of  delivery', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'levcon';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country code destin', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'clandb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country of dispat.vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vrldhk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'country code origin', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'clando';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts customs status', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdsts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference two', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ref02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference one', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ref01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'office of issue   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tskaaf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'item no. prec.doc ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tspstn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding doc.no. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsdokn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding documentcd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vdscod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expect net weight ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvwnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expect gross wght ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvwbr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expected qty sku  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvwtv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'expect colli code ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsvwck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'brgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'closing stock', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'eindvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'packages codes', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'colkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code commodity items', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'comkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'location code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'lockd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'warehouse code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'magkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'article code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'artkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'principal relat.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'rnropd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'description', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'oms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transaction time  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tstimu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transaction date  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsddmu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'entry date    yy', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'boekjj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sort of transaction', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vmtsrt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'status code       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sub-number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'sub';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'line', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'regel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment-sequence-nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'dosvlg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'task line         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsoprg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'task number       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsopnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'indication module ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'tsinmd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'branch code       vr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsmopd', @level2type = N'COLUMN', @level2name = N'vrfilk';

