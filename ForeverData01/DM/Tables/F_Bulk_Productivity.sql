CREATE TABLE [DM].[F_Bulk_Productivity] (
    [DateKey]          DATE            NOT NULL,
    [USER_ID]          NVARCHAR (15)   NULL,
    [Start]            CHAR (30)       NULL,
    [Eind_Calc]        CHAR (30)       NULL,
    [LPN]              NVARCHAR (50)   NULL,
    [NBR_UNITS]        NUMERIC (13, 5) NOT NULL,
    [Working_Sec]      INT             NULL,
    [Working_Sec_Corr] INT             NULL,
    [WRK_GRP]          VARCHAR (19)    NOT NULL,
    [InsertDateTime]   DATETIME2 (7)   NULL,
    [UpdateDateTime]   DATETIME2 (7)   NULL,
    [BatchID]          BIGINT          NOT NULL,
    [ProcessLogID]     BIGINT          NULL
);

