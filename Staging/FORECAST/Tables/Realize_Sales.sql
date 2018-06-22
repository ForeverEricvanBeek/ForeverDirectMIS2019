CREATE TABLE [FORECAST].[Realize_Sales] (
    [FOREIGN_OFFICE_ID] NVARCHAR (10)  NULL,
    [OFFICE_CODE]       NVARCHAR (10)  NULL,
    [PRODUCTNUM]        NVARCHAR (10)  NULL,
    [PROCESSYEAR]       NVARCHAR (7)   NULL,
    [PROCESSMONTH]      NVARCHAR (100) NULL,
    [Quantity]          INT            NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL
);

