CREATE TABLE [RT].[Price_Check_old] (
    [PRICE_LIST]          NVARCHAR (25)   NULL,
    [IFS_PART]            NVARCHAR (25)   NULL,
    [HO_PART]             VARCHAR (50)    NULL,
    [ACC_GROUP]           VARCHAR (28)    NULL,
    [FAMILY_ID]           NVARCHAR (7)    NULL,
    [DESCR]               NVARCHAR (35)   NULL,
    [PHASE_OUT]           DATE            NULL,
    [QTY_Per_Assembley]   DECIMAL (18, 2) NULL,
    [HO_PRICE]            DECIMAL (38, 2) NULL,
    [MULTIPLIED_HO_PRICE] DECIMAL (8, 2)  NULL,
    [IFS_PRICE]           DECIMAL (18, 2) NULL,
    [DIFF]                INT             NULL,
    [Request_ID]          BIGINT          NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL
);

