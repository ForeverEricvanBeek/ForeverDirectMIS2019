﻿CREATE TABLE [TRANS].[CARGO_ITEM] (
    [CARGO_ID]     BIGINT   NOT NULL,
    [INTERFACE_ID] BIGINT   NOT NULL,
    [Eff_Date]     DATE     NOT NULL,
    [End_Date]     DATE     NULL,
    [ActInd]       CHAR (1) NULL,
    [IsDeleted]    CHAR (1) NULL,
    [BatchID]      BIGINT   NULL,
    [ProcessLogID] BIGINT   NULL,
    CONSTRAINT [PK_CARGO_ITEM] PRIMARY KEY CLUSTERED ([CARGO_ID] ASC, [INTERFACE_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





