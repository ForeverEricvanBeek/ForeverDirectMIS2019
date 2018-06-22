CREATE TABLE [DM].[D_ForeCast_Sales] (
    [D_ForeCast_Sales]           BIGINT        IDENTITY (1, 1) NOT NULL,
    [ForeCast_Sales_Customer]    NVARCHAR (15) NULL,
    [ForeCast_Sales_Office]      NVARCHAR (50) NULL,
    [ForeCast_Sales_Year]        NVARCHAR (4)  NULL,
    [ForeCast_Sales_Month]       NVARCHAR (7)  NULL,
    [ForeCast_Sales_Part_No]     NVARCHAR (25) NULL,
    [ForeCast_Sales_Gen_Part_No] NVARCHAR (25) NULL,
    [ForeCast_Sales_Eaches]      INT           NULL,
    [CheckSum]                   NVARCHAR (32) NULL,
    [CheckSumSCD1]               NVARCHAR (32) NULL,
    [CheckSumSCD2]               NVARCHAR (32) NULL,
    [IsActual]                   INT           NULL,
    [IsInferred]                 INT           NULL,
    [IsDeleted]                  INT           NULL,
    [EffectiveDate]              DATE          NULL,
    [ExpiryDate]                 DATE          NULL,
    [InsertDateTime]             DATETIME2 (7) NULL,
    [UpdateDateTime]             DATETIME2 (7) NULL,
    [BatchID]                    BIGINT        NULL,
    [ProcessLogID]               BIGINT        NULL,
    CONSTRAINT [PK_D_ForeCast_Sales] PRIMARY KEY CLUSTERED ([D_ForeCast_Sales] ASC) WITH (FILLFACTOR = 80)
);

