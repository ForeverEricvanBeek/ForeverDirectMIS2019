﻿CREATE TABLE [KEWILL].[tstrac] (
    [dosvlg]       BIGINT        NOT NULL,
    [tsttgr]       NVARCHAR (15) NULL,
    [tsacdt]       DATE          NOT NULL,
    [tsacty]       TIME (7)      NOT NULL,
    [tstzma]       NVARCHAR (6)  NULL,
    [volgnr]       INT           NOT NULL,
    [deskod]       NVARCHAR (5)  NULL,
    [tsttkd]       NVARCHAR (10) NULL,
    [tspldt]       DATETIME2 (7) NULL,
    [tsplty]       TIME (7)      NULL,
    [tstrin]       NVARCHAR (30) NULL,
    [tstrst]       INT           NULL,
    [tsaast]       INT           NULL,
    [tsrm65]       NVARCHAR (65) NULL,
    [tsrm68]       NVARCHAR (68) NULL,
    [doksrt]       INT           NULL,
    [doknr]        BIGINT        NULL,
    [irdvlg]       BIGINT        NULL,
    [tsirvn]       INT           NULL,
    [tslogi]       NVARCHAR (12) NULL,
    [tsidch]       NVARCHAR (1)  NULL,
    [tschti]       INT           NULL,
    [tschid]       INT           NULL,
    [tschis]       INT           NULL,
    [tsgrpn]       INT           NULL,
    [vrfilk]       INT           NULL,
    [tsskpf]       NVARCHAR (1)  NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tstrac] PRIMARY KEY CLUSTERED ([dosvlg] ASC, [tsacty] ASC, [volgnr] ASC, [Eff_Date] ASC) ON [DWH_KEWILL]
) ON [DWH_KEWILL];





