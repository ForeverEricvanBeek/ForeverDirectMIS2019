CREATE TABLE [MANH_ARC].[ORDER_NOTE] (
    [ORDER_ID]          BIGINT         NOT NULL,
    [NOTE_SEQ]          SMALLINT       NOT NULL,
    [NOTE_TYPE]         NVARCHAR (8)   NULL,
    [NOTE]              NVARCHAR (500) NULL,
    [INTERNAL_ONLY]     SMALLINT       NOT NULL,
    [HIBERNATE_VERSION] FLOAT (53)     NULL,
    [IS_VENDOR_COMMENT] SMALLINT       NOT NULL,
    [LINE_ITEM_ID]      BIGINT         NOT NULL,
    [NOTE_CODE]         NVARCHAR (8)   NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_MANH_ORDER_NOTE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LINE_ITEM_ID] ASC, [NOTE_SEQ] ASC, [ORDER_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

