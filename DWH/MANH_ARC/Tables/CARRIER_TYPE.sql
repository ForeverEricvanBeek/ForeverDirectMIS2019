CREATE TABLE [MANH_ARC].[CARRIER_TYPE] (
    [CARRIER_TYPE_ID]   BIGINT        NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_CARRIER_TYPE] PRIMARY KEY CLUSTERED ([CARRIER_TYPE_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



