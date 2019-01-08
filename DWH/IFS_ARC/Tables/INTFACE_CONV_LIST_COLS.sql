﻿CREATE TABLE [IFS_ARC].[INTFACE_CONV_LIST_COLS] (
    [CONV_LIST_ID] NVARCHAR (100) NOT NULL,
    [OLD_VALUE]    NVARCHAR (200) NOT NULL,
    [NEW_VALUE]    NVARCHAR (200) NULL,
    [OBJID]        NVARCHAR (100) NULL,
    [OBJVERSION]   BIGINT         NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_INTFACE_CONV_LIST_COLS] PRIMARY KEY CLUSTERED ([CONV_LIST_ID] ASC, [Eff_Date] ASC, [OLD_VALUE] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];
