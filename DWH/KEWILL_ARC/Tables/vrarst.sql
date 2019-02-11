﻿CREATE TABLE [KEWILL_ARC].[vrarst] (
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
    CONSTRAINT [PK_vrarst] PRIMARY KEY CLUSTERED ([rnropd] ASC, [artkd] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];





