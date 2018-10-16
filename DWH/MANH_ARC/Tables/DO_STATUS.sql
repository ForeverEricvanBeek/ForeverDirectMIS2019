CREATE TABLE [MANH_ARC].[DO_STATUS] (
    [ORDER_STATUS] SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (40) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_DO_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ORDER_STATUS] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

