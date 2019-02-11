﻿CREATE TABLE [KEWILL_ARC].[tsdnaw] (
    [dosvlg]       BIGINT        NOT NULL,
    [tsroln]       TINYINT       NOT NULL,
    [zoek]         NVARCHAR (20) NULL,
    [relnr]        BIGINT        NULL,
    [tsnam1]       NVARCHAR (35) NULL,
    [tsnam2]       NVARCHAR (35) NULL,
    [tsnam3]       NVARCHAR (35) NULL,
    [tsadr1]       NVARCHAR (35) NULL,
    [tsadr2]       NVARCHAR (35) NULL,
    [tsadr3]       NVARCHAR (35) NULL,
    [tscity]       NVARCHAR (35) NULL,
    [deskod]       NVARCHAR (5)  NULL,
    [tscsei]       NVARCHAR (9)  NULL,
    [postun]       NVARCHAR (9)  NULL,
    [land]         NVARCHAR (3)  NULL,
    [taalk]        TINYINT       NULL,
    [tsemad]       NVARCHAR (50) NULL,
    [tsinad]       NVARCHAR (50) NULL,
    [asbtwn]       NVARCHAR (17) NULL,
    [kontps]       NVARCHAR (15) NULL,
    [telnr]        NVARCHAR (20) NULL,
    [telex]        NVARCHAR (20) NULL,
    [telfax]       NVARCHAR (20) NULL,
    [tstapk]       SMALLINT      NULL,
    [srtnaw]       TINYINT       NULL,
    [fill12]       NVARCHAR (12) NULL,
    [tscit2]       NVARCHAR (35) NULL,
    [tstfch]       NCHAR (1)     NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsdnaw] PRIMARY KEY CLUSTERED ([dosvlg] ASC, [tsroln] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];





