CREATE TABLE [WEB].[OrderAvailability] (
    [ID]               BIGINT         NOT NULL,
    [ITEM_NAME]        NVARCHAR (100) NULL,
    [NUMBER_OF_ORDERS] INT            NULL,
    [NUMBER_OF_UNITS]  INT            NULL,
    [REQUIRED]         INT            NULL,
    [STOCK]            INT            NULL,
    [REPLENISHMENT]    INT            NULL,
    [RESERVED]         INT            NULL,
    [LOCKED]           INT            NULL,
    [AVAILABLE]        INT            NULL,
    [DATE]             DATETIME       NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_OrderAvailability] PRIMARY KEY CLUSTERED ([ID] ASC)
);

