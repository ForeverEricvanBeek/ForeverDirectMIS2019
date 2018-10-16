CREATE TABLE [MANH_ARC].[SHIPMENT_TYPE] (
    [SHIPMENT_TYPE] NVARCHAR (3)  NOT NULL,
    [DESCRIPTION]   NVARCHAR (50) NULL,
    [Eff_Date]      DATE          NOT NULL,
    [End_Date]      DATE          NULL,
    [ActInd]        CHAR (1)      NULL,
    [IsDeleted]     CHAR (1)      NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIPMENT_TYPE] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

