CREATE TABLE [IFS_ARC].[RECEIPT_INVENTORY_LOCATION] (
    [CONTRACT]           NVARCHAR (5)    NOT NULL,
    [PART_NO]            NVARCHAR (25)   NOT NULL,
    [CONFIGURATION_ID]   NVARCHAR (50)   NOT NULL,
    [LOCATION_NO]        NVARCHAR (35)   NOT NULL,
    [LOT_BATCH_NO]       NVARCHAR (20)   NOT NULL,
    [SERIAL_NO]          NVARCHAR (50)   NOT NULL,
    [ENG_CHG_LEVEL]      NVARCHAR (2)    NOT NULL,
    [WAIV_DEV_REJ_NO]    NVARCHAR (15)   NOT NULL,
    [ACTIVITY_SEQ]       INT             NOT NULL,
    [ORDER_NO]           NVARCHAR (12)   NOT NULL,
    [LINE_NO]            NVARCHAR (4)    NOT NULL,
    [RELEASE_NO]         NVARCHAR (4)    NOT NULL,
    [RECEIPT_NO]         INT             NOT NULL,
    [QTY_IN_STORE]       INT             NULL,
    [LOCATION_TYPE]      NVARCHAR (4000) NULL,
    [LOCATION_TYPE_DB]   NVARCHAR (20)   NULL,
    [PROJECT_ID]         NVARCHAR (10)   NULL,
    [CATCH_QTY_IN_STORE] INT             NULL,
    [PUR_QTY_IN_STORE]   INT             NULL,
    [OBJID]              NVARCHAR (4000) NULL,
    [OBJVERSION]         NVARCHAR (2000) NULL,
    [Eff_Date]           DATE            NOT NULL,
    [End_Date]           DATE            NULL,
    [ActInd]             CHAR (1)        NULL,
    [IsDeleted]          CHAR (1)        NULL,
    [BatchID]            BIGINT          NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_RECEIPT_INVENTORY_LOCATION] PRIMARY KEY CLUSTERED ([ACTIVITY_SEQ] ASC, [CONFIGURATION_ID] ASC, [CONTRACT] ASC, [Eff_Date] ASC, [ENG_CHG_LEVEL] ASC, [LINE_NO] ASC, [SERIAL_NO] ASC, [WAIV_DEV_REJ_NO] ASC, [LOCATION_NO] ASC, [LOT_BATCH_NO] ASC, [ORDER_NO] ASC, [PART_NO] ASC, [RECEIPT_NO] ASC, [RELEASE_NO] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



