CREATE TABLE [MANH_ARC].[STATE_PROV] (
    [STATE_PROV]        NVARCHAR (3)  NOT NULL,
    [COUNTRY_CODE]      NVARCHAR (2)  NOT NULL,
    [STATE_PROV_NAME]   NVARCHAR (40) NOT NULL,
    [STATE_PROV_ID]     INT           NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_STATE_PROV] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [Eff_Date] ASC, [STATE_PROV] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



