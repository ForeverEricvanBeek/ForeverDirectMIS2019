CREATE TABLE [IFS].[C_EXT_SHIP_CONFIRM] (
    [APPLICATION_MESSAGE_ID] INT           NOT NULL,
    [SHIPMENT_ID]            INT           NOT NULL,
    [OBJVERSION]             NVARCHAR (14) NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    [Issue]                  TINYINT       NULL,
    CONSTRAINT [PK_C_EXT_SHIP_CONFIRM] PRIMARY KEY CLUSTERED ([APPLICATION_MESSAGE_ID] ASC, [SHIPMENT_ID] ASC)
);

