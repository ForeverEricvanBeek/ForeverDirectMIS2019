CREATE TABLE [DM].[F_Open_Payments] (
    [Company]        NVARCHAR (20)   NULL,
    [Party_Type]     NVARCHAR (4000) NULL,
    [Facility_Code]  NVARCHAR (20)   NULL,
    [Country_Code]   NVARCHAR (2)    NULL,
    [Invoice_ID]     INT             NULL,
    [Voucher_NO_REF] INT             NULL,
    [Name]           NVARCHAR (100)  NULL,
    [Invoice_Date]   DATETIME2 (7)   NULL,
    [Due_Date]       DATETIME2 (7)   NULL,
    [Not_Due]        INT             NULL,
    [Due_30]         INT             NULL,
    [Due_60]         INT             NULL,
    [Due_90]         INT             NULL,
    [Due_More_90]    INT             NULL,
    [Total_Over_Due] INT             NULL,
    [Balance]        INT             NULL,
    [OBJ_State]      NVARCHAR (2000) NULL,
    [InsertDateTime] DATETIME2 (7)   NULL,
    [UpdateDateTime] DATETIME2 (7)   NULL,
    [BatchID]        BIGINT          NOT NULL,
    [ProcessLogID]   BIGINT          NULL
);

