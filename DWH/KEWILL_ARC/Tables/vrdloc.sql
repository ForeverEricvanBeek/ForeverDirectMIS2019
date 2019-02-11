﻿CREATE TABLE [KEWILL_ARC].[vrdloc] (
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
    CONSTRAINT [PK_vrdloc] PRIMARY KEY CLUSTERED ([vrfilk] ASC, [rnropd] ASC, [artkd] ASC, [magkd] ASC, [lockd] ASC, [vrvrdt] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];





