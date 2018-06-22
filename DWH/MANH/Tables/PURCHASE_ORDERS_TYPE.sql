CREATE TABLE [MANH].[PURCHASE_ORDERS_TYPE] (
    [PURCHASE_ORDERS_TYPE] INT           NOT NULL,
    [DESCRIPTION]          NVARCHAR (50) NOT NULL,
    [CREATED_DTTM]         DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]    DATETIME2 (7) NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_PURCHASE_ORDERS_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PURCHASE_ORDERS_TYPE] ASC)
);

