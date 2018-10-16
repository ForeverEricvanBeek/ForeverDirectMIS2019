CREATE TABLE [KEWILL_ARC].[tsccpc] (
    [rnropd]       BIGINT        NOT NULL,
    [artkd]        NVARCHAR (35) NOT NULL,
    [land]         NVARCHAR (3)  NOT NULL,
    [jdatum]       NVARCHAR (50) NOT NULL,
    [sagnr]        NVARCHAR (22) NULL,
    [tsexsg]       NVARCHAR (22) NULL,
    [comkod]       NVARCHAR (4)  NOT NULL,
    [fill26]       NVARCHAR (26) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_tsccpc] PRIMARY KEY CLUSTERED ([artkd] ASC, [comkod] ASC, [Eff_Date] ASC, [jdatum] ASC, [land] ASC, [rnropd] ASC) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];

