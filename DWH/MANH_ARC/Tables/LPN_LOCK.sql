CREATE TABLE [MANH_ARC].[LPN_LOCK] (
    [LPN_LOCK_ID]              BIGINT        NOT NULL,
    [LPN_ID]                   BIGINT        NOT NULL,
    [INVENTORY_LOCK_CODE]      NVARCHAR (2)  NULL,
    [REASON_CODE]              NVARCHAR (2)  NULL,
    [LOCK_COUNT]               SMALLINT      NULL,
    [TC_LPN_ID]                NVARCHAR (50) NULL,
    [CREATED_SOURCE_TYPE]      SMALLINT      NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] SMALLINT      NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [Eff_Date]                 DATE          NOT NULL,
    [End_Date]                 DATE          NULL,
    [ActInd]                   CHAR (1)      NULL,
    [IsDeleted]                CHAR (1)      NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_LPN_LOCK] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LPN_LOCK_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



