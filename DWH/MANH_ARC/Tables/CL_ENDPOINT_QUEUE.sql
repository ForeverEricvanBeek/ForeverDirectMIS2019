﻿CREATE TABLE [MANH_ARC].[CL_ENDPOINT_QUEUE] (
    [VERSION_ID]          INT            NOT NULL,
    [ENDPOINT_QUEUE_ID]   INT            NOT NULL,
    [ENDPOINT_ID]         INT            NOT NULL,
    [MSG_ID]              INT            NOT NULL,
    [WHEN_QUEUED]         DATETIME2 (7)  NOT NULL,
    [STATUS]              INT            NOT NULL,
    [PRTY]                INT            NOT NULL,
    [HOLD_UNTIL]          DATETIME2 (7)  NULL,
    [ERROR_COUNT]         INT            NOT NULL,
    [ERROR_COST]          INT            NOT NULL,
    [DISPOSITION]         INT            NOT NULL,
    [WHEN_STATUS_CHANGED] DATETIME2 (7)  NOT NULL,
    [LOG_ID]              NVARCHAR (38)  NULL,
    [TARGET_ID]           NVARCHAR (64)  NULL,
    [TARGET_URI]          NVARCHAR (256) NULL,
    [ERROR_DETAILS]       NVARCHAR (100) NULL,
    [Eff_Date]            DATE           NOT NULL,
    [End_Date]            DATE           NULL,
    [ActInd]              CHAR (1)       NULL,
    [IsDeleted]           CHAR (1)       NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_MANH_CL_ENDPOINT_QUEUE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ENDPOINT_QUEUE_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

