CREATE TABLE [DM].[F_Daily_Cash] (
    [COMPANY]          INT             NOT NULL,
    [KY]               INT             NOT NULL,
    [ACCOUNT]          NVARCHAR (15)   NULL,
    [ACCOUNT_GROUP]    VARCHAR (27)    NULL,
    [DESCRIPTION]      VARCHAR (38)    NULL,
    [BOOK_BALANCE_EUR] NUMERIC (38, 2) NULL,
    [BOOK_BALANCE_US]  NUMERIC (14, 2) NULL,
    [InsertDateTime]   DATETIME2 (7)   NULL,
    [UpdateDateTime]   DATETIME2 (7)   NULL,
    [BatchID]          BIGINT          NOT NULL,
    [ProcessLogID]     BIGINT          NULL
);

