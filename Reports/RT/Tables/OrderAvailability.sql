CREATE TABLE [RT].[OrderAvailability] (
    [ITEM_NAME]        NVARCHAR (100) NULL,
    [NUMBER_OF_ORDERS] INT            NULL,
    [NUMBER_OF_UNITS]  INT            NULL,
    [REQUIRED]         INT            NULL,
    [STOCK]            INT            NULL,
    [REPLENISHMENT]    INT            NULL,
    [RESERVED]         INT            NULL,
    [LOCKED]           INT            NULL,
    [AVAILABLE]        INT            NULL,
    [WEEK]             INT            NULL,
    [DATE]             DATETIME       NULL,
    [HOURS]            INT            NULL,
    [Request_ID]       BIGINT         NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL
);

