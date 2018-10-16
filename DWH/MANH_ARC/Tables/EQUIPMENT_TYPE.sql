CREATE TABLE [MANH_ARC].[EQUIPMENT_TYPE] (
    [EQUIPMENT_TYPE]    BIGINT        NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NOT NULL,
    [IS_LABOR]          INT           NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_EQUIPMENT_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [EQUIPMENT_TYPE] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

