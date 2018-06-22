CREATE TABLE [KEWILL].[tsdsmd] (
    [dosvlg]       BIGINT          NOT NULL,
    [afd]          NVARCHAR (4)    NULL,
    [tsjrs2]       SMALLINT        NULL,
    [tsmds2]       TINYINT         NULL,
    [afh]          NVARCHAR (1)    NULL,
    [zendnr]       BIGINT          NULL,
    [spltnr]       TINYINT         NULL,
    [datinv]       DATETIME2 (6)   NULL,
    [kode6]        BIGINT          NULL,
    [module]       TINYINT         NULL,
    [srtdos]       NVARCHAR (1)    NULL,
    [tstwst]       TINYINT         NULL,
    [tsexdo]       BIGINT          NULL,
    [hvbnr]        NVARCHAR (15)   NULL,
    [manif]        NVARCHAR (20)   NULL,
    [refnr]        NVARCHAR (20)   NULL,
    [offvlg]       INT             NULL,
    [ref01]        NVARCHAR (10)   NULL,
    [ref02]        NVARCHAR (5)    NULL,
    [plaanl]       NVARCHAR (6)    NULL,
    [plafle]       NVARCHAR (6)    NULL,
    [conttp]       NVARCHAR (3)    NULL,
    [atlcnt]       SMALLINT        NULL,
    [contnr]       NVARCHAR (11)   NULL,
    [plher]        NVARCHAR (5)    NULL,
    [plbes]        NVARCHAR (5)    NULL,
    [vertrd]       DATETIME2 (6)   NULL,
    [aankd]        DATETIME2 (6)   NULL,
    [tsdgsg]       TINYINT         NULL,
    [tsmdsg]       TINYINT         NULL,
    [tsjrsg]       SMALLINT        NULL,
    [trplkd]       NVARCHAR (5)    NULL,
    [lllkod]       NVARCHAR (6)    NULL,
    [awbnum]       INT             NULL,
    [fcllcl]       NVARCHAR (7)    NULL,
    [bootnr]       SMALLINT        NULL,
    [zkboot]       NVARCHAR (10)   NULL,
    [autonr]       INT             NULL,
    [airlin]       NVARCHAR (3)    NULL,
    [tsrsau]       NVARCHAR (8)    NULL,
    [omverv]       NVARCHAR (25)   NULL,
    [bkbvrk]       NVARCHAR (5)    NULL,
    [konkvr]       SMALLINT        NULL,
    [tskkag]       SMALLINT        NULL,
    [krskvr]       NVARCHAR (1)    NULL,
    [valvr]        NVARCHAR (3)    NULL,
    [krsvr]        NUMERIC (12, 6) NULL,
    [tsvree]       INT             NULL,
    [konkst]       SMALLINT        NULL,
    [krskks]       NVARCHAR (1)    NULL,
    [valkst]       NVARCHAR (3)    NULL,
    [krskst]       NUMERIC (12, 6) NULL,
    [tskoee]       INT             NULL,
    [merknr]       NVARCHAR (16)   NULL,
    [collia]       NUMERIC (14, 3) NULL,
    [colkd]        NVARCHAR (2)    NULL,
    [comkod]       NVARCHAR (4)    NULL,
    [comzoe]       NVARCHAR (10)   NULL,
    [omsgd]        NVARCHAR (20)   NULL,
    [gewkod]       TINYINT         NULL,
    [brgew]        NUMERIC (14, 3) NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [vogew]        NUMERIC (14, 3) NULL,
    [hoogte]       NUMERIC (4, 2)  NULL,
    [breedt]       NUMERIC (4, 2)  NULL,
    [lengte]       NUMERIC (4, 2)  NULL,
    [volkd]        NVARCHAR (1)    NULL,
    [volwrd]       NUMERIC (14, 3) NULL,
    [valwgd]       NVARCHAR (3)    NULL,
    [wrdgd]        NUMERIC (14, 2) NULL,
    [tarkla]       NVARCHAR (1)    NULL,
    [vrkstg]       NUMERIC (10, 2) NULL,
    [sagnr]        NVARCHAR (22)   NULL,
    [orgdok]       TINYINT         NULL,
    [kopdok]       TINYINT         NULL,
    [splvnr]       TINYINT         NULL,
    [doknr1]       TINYINT         NULL,
    [doknr2]       TINYINT         NULL,
    [doknr3]       NVARCHAR (2)    NULL,
    [doknr4]       NVARCHAR (2)    NULL,
    [tsovag]       NCHAR (1)       NULL,
    [tsrefa]       NVARCHAR (15)   NULL,
    [tslaly]       NCHAR (1)       NULL,
    [tsdmfa]       NCHAR (1)       NULL,
    [tslafl]       TINYINT         NULL,
    [tsvvjn]       NCHAR (1)       NULL,
    [tsprtr]       NCHAR (1)       NULL,
    [tarsrt]       NVARCHAR (2)    NULL,
    [tsopdg]       SMALLINT        NULL,
    [tsbrkk]       SMALLINT        NULL,
    [tslapo]       SMALLINT        NULL,
    [tslopo]       SMALLINT        NULL,
    [tsbvJN]       NVARCHAR (1)    NULL,
    [tsbvbd]       NUMERIC (10, 2) NULL,
    [tsdlhr]       SMALLINT        NULL,
    [tsseal]       NVARCHAR (8)    NULL,
    [tskaav]       NVARCHAR (7)    NULL,
    [tscodc]       NVARCHAR (3)    NULL,
    [tsdan2]       NVARCHAR (15)   NULL,
    [tsmfJN]       NCHAR (1)       NULL,
    [tswnr2]       INT             NULL,
    [tscoJN]       NCHAR (1)       NULL,
    [tshaJN]       NCHAR (1)       NULL,
    [tsmaJN]       NCHAR (1)       NULL,
    [bedrk1]       NUMERIC (10, 2) NULL,
    [bedrk2]       NUMERIC (10, 2) NULL,
    [bedrk3]       NUMERIC (10, 2) NULL,
    [bedrk4]       NUMERIC (10, 2) NULL,
    [bedrk5]       NUMERIC (10, 2) NULL,
    [bedrk6]       NUMERIC (10, 2) NULL,
    [bedrk7]       NUMERIC (10, 2) NULL,
    [bedrk8]       NUMERIC (10, 2) NULL,
    [bedrk9]       NUMERIC (10, 2) NULL,
    [kode1]        BIGINT          NULL,
    [kode2]        BIGINT          NULL,
    [kode3]        BIGINT          NULL,
    [kode4]        BIGINT          NULL,
    [kode5]        BIGINT          NULL,
    [kode7]        BIGINT          NULL,
    [kode8]        BIGINT          NULL,
    [kode9]        BIGINT          NULL,
    [kdverz]       NCHAR (1)       NULL,
    [kdrmb]        NCHAR (1)       NULL,
    [kdgrin]       NCHAR (1)       NULL,
    [kdlds]        NCHAR (1)       NULL,
    [vdscod]       NVARCHAR (3)    NULL,
    [tsdokn]       NVARCHAR (20)   NULL,
    [tspstn]       SMALLINT        NULL,
    [tskaaf]       NVARCHAR (10)   NULL,
    [doknr]        BIGINT          NULL,
    [tslsdg]       TINYINT         NULL,
    [tslsma]       TINYINT         NULL,
    [tslsjr]       SMALLINT        NULL,
    [tslddd]       TINYINT         NULL,
    [tsldmm]       TINYINT         NULL,
    [tsldyy]       INT             NULL,
    [taanlv]       TIME (4)        NULL,
    [taflev]       TIME (4)        NULL,
    [route]        NVARCHAR (20)   NULL,
    [to2]          NVARCHAR (5)    NULL,
    [by2]          NVARCHAR (3)    NULL,
    [vluch2]       NVARCHAR (11)   NULL,
    [to3]          NVARCHAR (5)    NULL,
    [by3]          NVARCHAR (3)    NULL,
    [werknr]       INT             NULL,
    [tslkdh]       NVARCHAR (3)    NULL,
    [tsvbha]       NVARCHAR (8)    NULL,
    [tsfilh]       NVARCHAR (4)    NULL,
    [mat01]        INT             NULL,
    [mat02]        INT             NULL,
    [mat03]        INT             NULL,
    [kmleeg]       INT             NULL,
    [kmbldn]       INT             NULL,
    [toturn]       NUMERIC (5, 2)  NULL,
    [totllu]       NUMERIC (5, 2)  NULL,
    [totwau]       NUMERIC (5, 2)  NULL,
    [totryu]       NUMERIC (5, 2)  NULL,
    [totmkg]       NUMERIC (14, 3) NULL,
    [totmvo]       NUMERIC (10, 3) NULL,
    [plslev]       NVARCHAR (15)   NULL,
    [tsreid]       BIGINT          NULL,
    [tsretl]       SMALLINT        NULL,
    [tsbyrd]       INT             NULL,
    [vkktot]       NUMERIC (14, 2) NULL,
    [vkotot]       NUMERIC (14, 2) NULL,
    [nkktot]       NUMERIC (14, 2) NULL,
    [nkotot]       NUMERIC (14, 2) NULL,
    [tsburt]       NVARCHAR (6)    NULL,
    [tsmf15]       NVARCHAR (15)   NULL,
    [tsord]        BIGINT          NULL,
    [tsiord]       BIGINT          NULL,
    [tsuitd]       DATETIME2 (6)   NULL,
    [tsdlos]       NVARCHAR (3)    NULL,
    [tsdlhk]       NVARCHAR (3)    NULL,
    [tsdlbs]       NVARCHAR (3)    NULL,
    [tsdexp]       NVARCHAR (3)    NULL,
    [tsdfak]       NVARCHAR (17)   NULL,
    [tsdddt]       DATETIME2 (6)   NULL,
    [regel]        INT             NULL,
    [tszenv]       INT             NULL,
    [tsrttl]       SMALLINT        NULL,
    [reisnr]       INT             NULL,
    [tsbstt]       SMALLINT        NULL,
    [exafd]        NVARCHAR (4)    NULL,
    [exper]        SMALLINT        NULL,
    [exafh]        NVARCHAR (1)    NULL,
    [exreis]       INT             NULL,
    [exzend]       INT             NULL,
    [exsplt]       SMALLINT        NULL,
    [tso161]       NVARCHAR (16)   NULL,
    [tsrido]       BIGINT          NULL,
    [tsserl]       NVARCHAR (4)    NULL,
    [tscoda]       NUMERIC (14, 2) NULL,
    [tscods]       TINYINT         NULL,
    [vlucht]       NVARCHAR (11)   NULL,
    [tsloai]       NUMERIC (14, 3) NULL,
    [fill11]       NVARCHAR (11)   NULL,
    [tsofnr]       INT             NULL,
    [tsofsn]       INT             NULL,
    [tsstts]       SMALLINT        NULL,
    [tsflcd]       NVARCHAR (10)   NULL,
    [tsvcnt]       NVARCHAR (10)   NULL,
    [tsluch]       NUMERIC (6, 2)  NULL,
    [tstcec]       NUMERIC (6, 2)  NULL,
    [tstfac]       NUMERIC (6, 2)  NULL,
    [tsdist]       INT             NULL,
    [tsdima]       NCHAR (1)       NULL,
    [tsca01]       NCHAR (1)       NULL,
    [tsca02]       NCHAR (1)       NULL,
    [tsca03]       NCHAR (1)       NULL,
    [tsca04]       NCHAR (1)       NULL,
    [tsca05]       NCHAR (1)       NULL,
    [tsca07]       NCHAR (1)       NULL,
    [tsca08]       NCHAR (1)       NULL,
    [tsca09]       NCHAR (1)       NULL,
    [tsca10]       NCHAR (1)       NULL,
    [tsca06]       NCHAR (1)       NULL,
    [tspcft]       NCHAR (1)       NULL,
    [tspcop]       NCHAR (1)       NULL,
    [tszolo]       NVARCHAR (10)   NULL,
    [tszola]       NVARCHAR (10)   NULL,
    [tszone]       NVARCHAR (10)   NULL,
    [tsdsem]       INT             NULL,
    [tsdsso]       INT             NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tsdsmd] PRIMARY KEY NONCLUSTERED ([dosvlg] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'distance solo     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdsso';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'distance empty    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdsem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'postal code zone  ts  tshssr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tszone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'zone loading      ts  tshssr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tszola';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'zone unloading    ts  tshssr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tszolo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'part of COP Y/N   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tspcop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'part of CFT Y/N   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tspcft';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 06  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca06';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 10  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 09  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca09';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 08  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca08';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 07  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca07';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 05  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca05';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 04  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca04';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 03  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca03';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 02  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'parameter Y/N 01  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsca01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'distance manually ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdima';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'distance          ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdist';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'temp contain Fahr ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tstfac';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'temp contain Celsius', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tstcec';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'air humidity      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsluch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ventilation contain', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsvcnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'procesflow code   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsflcd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'statuscode        ts  tsfsts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsstts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sequence number quot', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsofsn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'quotation number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsofnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'filler11', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'fill11';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'load index        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsloai';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'flight no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vlucht';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cod status        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tscods';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cod amount cur    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tscoda';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'service level     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsserl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'trip filenumber', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsrido';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'extra descr. lang. 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tso161';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer of split.no', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exsplt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer of shipm.no', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exzend';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer of job no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exreis';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer of dispatch', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exafh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer of periodno', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exper';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer to dept.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'exafd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'message status    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsbstt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'job no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'reisnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'trip sequential no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsrttl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts shipment seq.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tszenv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'line', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'regel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cust document datets', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdddt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customs invoicenr ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdfak';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cust terms of del ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdexp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cust country dest ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdlbs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cust country desp ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdlhk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cust country orig ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdlos';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'implementation date', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsuitd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Internet order nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsiord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'order number      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tailor filler 15  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsmf15';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'maintenance code  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsburt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tot actual revenues', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'nkotot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total actual costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'nkktot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tot estimate revenue', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vkotot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total estimate costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vkktot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'co-driver         ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsbyrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'job sequential no ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsretl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'job filenumber', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsreid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'place of declaration', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'plslev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total no. used m3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'totmvo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total no. used kgs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'totmkg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total driving hrs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'totryu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total waiting hrs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'totwau';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tot. hrs load/unload', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'totllu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'total no. of hours', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'toturn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'no. of kms loaded', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kmbldn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'no. of kms unloaded', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kmleeg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'equipmentcode 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'mat03';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'equipmentcode 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'mat02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'equipmentcode 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'mat01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TS filler 5 H AWB no', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsfilh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'HAWB-no alpha     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsvbha';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TS airl.cd. H AWB no', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslkdh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'employee no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'werknr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'at airline 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'by3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to airport 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'to3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'flight number  2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vluch2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'at airline 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'by2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to airport 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'to2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'routing', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'route';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delivery time', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'taflev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'collection time', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'taanlv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'loading year      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsldyy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'loading month     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsldmm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'loading day       ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslddd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'year of unl date  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslsjr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'month of unl date ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslsma';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'day of unl date   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslsdg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'doknr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'office of issue   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tskaaf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'item no. prec.doc ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tspstn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding doc.no. ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdokn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'preceding documentcd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vdscod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code shed handlingYN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kdlds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code declare      YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kdgrin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code C.O.D.       YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kdrmb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cd collective CMR YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kdverz';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code letter/credit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode9';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 8', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 7', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 5', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 4', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 9', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk9';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 8', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 7', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 6', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 5', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 4', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'amount 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bedrk1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts MAWBno automat YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsmaJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts HAWBno automat YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tshaJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts consol.scheduleYN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tscoJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'initials 2nd employe', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tswnr2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts manifesto      YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsmfJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts custom goodno.2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdan2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cod currency      ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tscodc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'addl.office data  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tskaav';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'seal number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsseal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts days of shed rent', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdlhr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts domestic tran sum', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsbvbd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts domestic tran.JNE', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsbvJN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'unload tariff cd  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslopo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'load.place tariff cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslapo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'break code        ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsbrkk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tsdokg structure  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsopdg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tariff type', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tarsrt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'file warehousing YN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsprtr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipping instr.YN ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsvvjn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shed delivery     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslafl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'file trans auto YNts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdmfa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'loading list YN   ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tslaly';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference of agent', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsrefa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'store transf.agentYN', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsovag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document no. 4', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'doknr4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document no.3', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'doknr3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document no.2', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'doknr2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'document no. 1', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'doknr1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'seq. splitting no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'splvnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'docs.,num. of copies', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kopdok';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'num. of orginal docs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'orgdok';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commodity code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'sagnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commod.freight costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vrkstg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commod.tariff rate', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tarkla';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'value of goods', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'wrdgd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cur.code comm.value', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'valwgd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'volume value', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'volwrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'volume code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'volkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dimension length', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'lengte';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'width of a package', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'breedt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'height of a package', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'hoogte';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'weight per package', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vogew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'net weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'ntgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gross weight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'brgew';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'weight code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'gewkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'commodity descr.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'omsgd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'searchnm comm.items', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'comzoe';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code commodity items', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'comkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'packages codes', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'colkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'num. of packages', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'collia';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'marks and numbers', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'merknr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'costs curr. unit  ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tskoee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'costs rate of exch.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'krskst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'costs  currency code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'valkst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'costs rt.of exch.cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'krskks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'terms code of costs', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'konkst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'freight curr.unit ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsvree';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate of exch.freight', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'krsvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'freight currency cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'valvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'freight for.exch.cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'krskvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'terms deliv. agent', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tskkag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'freight condition cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'konkvr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'rate area land exp', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bkbvrk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nm means of transpor', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'omverv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'job no. ship. comp.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsrsau';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'airline company', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'airlin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lorry number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'autonr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'searchname of vessel', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'zkboot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'vessel no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'bootnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FCL/LCL', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'fcllcl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'airway bill no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'awbnum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shed/location/berth', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'lllkod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'cd place of transit', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'trplkd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts year composite', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsjrsg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts month comp     ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsmdsg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ts day comp.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsdgsg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'arrival date', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'aankd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date of departure', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'vertrd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'destination place cd', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'plbes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code place of origin', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'plher';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'container no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'contnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'number of containers', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'atlcnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'type of container', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'conttp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delivery location', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'plafle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'location delivery', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'plaanl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference two', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'ref02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'reference one', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'ref01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sequence no. tender', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'offvlg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'creditor/ref.no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'refnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'manifest no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'manif';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'main cons. note no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'hvbnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'transfer seq.file no', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsexdo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'trip/workorder st ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tstwst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sort of file', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'srtdos';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'module indication', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'module';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'code 6', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'kode6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'effective  date', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'datinv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'splitting number', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'spltnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment no.', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'zendnr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dispatch code', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'afh';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'period in year    ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsmds2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'year periodnumber ts', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'tsjrs2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'department', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'afd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipment-sequence-nr', @level0type = N'SCHEMA', @level0name = N'KEWILL', @level1type = N'TABLE', @level1name = N'tsdsmd', @level2type = N'COLUMN', @level2name = N'dosvlg';

