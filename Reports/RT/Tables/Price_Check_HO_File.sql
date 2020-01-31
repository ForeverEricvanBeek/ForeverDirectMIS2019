CREATE TABLE [RT].[Price_Check_HO_File] (
    [Part_NO_LP]     VARCHAR (50)    NULL,
    [Part_NO_NOW]    VARCHAR (50)    NULL,
    [Price_List_LP]  VARCHAR (50)    NULL,
    [Price_List_NOW] VARCHAR (50)    NULL,
    [VAL_LP]         DECIMAL (38, 2) NULL,
    [VAL_NOW]        DECIMAL (38, 2) NULL,
    [DIFF]           INT             NULL,
    [Request_ID]     BIGINT          NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL
);

