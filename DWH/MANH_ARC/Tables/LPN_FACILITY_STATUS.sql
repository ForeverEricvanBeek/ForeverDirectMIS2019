CREATE TABLE [MANH_ARC].[LPN_FACILITY_STATUS] (
    [LPN_FACILITY_STATUS]        SMALLINT      NOT NULL,
    [INBOUND_OUTBOUND_INDICATOR] NVARCHAR (1)  NOT NULL,
    [DESCRIPTION]                NVARCHAR (50) NOT NULL,
    [Eff_Date]                   DATE          NOT NULL,
    [End_Date]                   DATE          NULL,
    [ActInd]                     CHAR (1)      NULL,
    [IsDeleted]                  CHAR (1)      NULL,
    [BatchID]                    BIGINT        NULL,
    [ProcessLogID]               BIGINT        NULL,
    CONSTRAINT [PK_MANH_LPN_FACILITY_STATUS] PRIMARY KEY CLUSTERED ([LPN_FACILITY_STATUS] ASC, [Eff_Date] ASC, [INBOUND_OUTBOUND_INDICATOR] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

