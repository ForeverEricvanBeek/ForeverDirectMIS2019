CREATE TABLE [MANH_ARC].[MOVEMENT_TYPE] (
    [MOVEMENT_TYPE] NVARCHAR (2)  NOT NULL,
    [DESCRIPTION]   NVARCHAR (50) NULL,
    [Eff_Date]      DATE          NOT NULL,
    [End_Date]      DATE          NULL,
    [ActInd]        CHAR (1)      NULL,
    [IsDeleted]     CHAR (1)      NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    CONSTRAINT [PK_MANH_MOVEMENT_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [MOVEMENT_TYPE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



