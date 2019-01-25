CREATE TABLE [EXTRA_ARC].[CL_MESSAGE_PLUS] (
    [TYPE]          NVARCHAR (50) NULL,
    [MSG_ID]        BIGINT        NOT NULL,
    [LPN]           NVARCHAR (9)  NULL,
    [WAVE]          NVARCHAR (12) NULL,
    [ORDER_ID]      NVARCHAR (9)  NULL,
    [DIVERT]        NVARCHAR (6)  NULL,
    [WEIGHT]        NVARCHAR (6)  NULL,
    [LINE_ITEM_ID]  NVARCHAR (10) NULL,
    [PICK_LOCATION] NVARCHAR (10) NULL,
    [ITEM_NAME]     NVARCHAR (14) NULL,
    [QUANTITY]      NVARCHAR (6)  NULL,
    [ILPN]          NVARCHAR (8)  NULL,
    [PICKER]        NVARCHAR (20) NULL,
    [STATE]         NVARCHAR (20) NULL,
    [CREATE_DATE]   DATETIME2 (7) NULL,
    [Eff_Date]      DATE          NOT NULL,
    [End_Date]      DATE          NULL,
    [ActInd]        CHAR (1)      NULL,
    [IsDeleted]     CHAR (1)      NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    CONSTRAINT [PK_CL_MESSAGE_PLUS] PRIMARY KEY CLUSTERED ([MSG_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_EXTRA_ARC]
) ON [DWH_EXTRA_ARC];





