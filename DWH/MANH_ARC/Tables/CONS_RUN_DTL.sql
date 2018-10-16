﻿CREATE TABLE [MANH_ARC].[CONS_RUN_DTL] (
    [CONS_RUN_DTL_ID]   INT             NOT NULL,
    [CONS_RUN_ID]       INT             NOT NULL,
    [CONS_RUN_DTL_TYPE] NVARCHAR (1)    NULL,
    [CONS_DTL_CODE]     NVARCHAR (50)   NOT NULL,
    [DESCRIPTION]       NVARCHAR (1024) NOT NULL,
    [REGION_ID]         NVARCHAR (10)   NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_CONS_RUN_DTL] PRIMARY KEY CLUSTERED ([CONS_RUN_DTL_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

