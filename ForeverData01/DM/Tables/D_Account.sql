﻿CREATE TABLE [DM].[D_Account] (
    [D_Account_Skey]       BIGINT          IDENTITY (1, 1) NOT NULL,
    [Company]              NVARCHAR (20)   NOT NULL,
    [Account_ID]           INT             NOT NULL,
    [Account_Desc]         NVARCHAR (4000) NULL,
    [Valid_From_Date]      DATETIME2 (7)   NULL,
    [Valid_Until_Date]     DATETIME2 (7)   NULL,
    [Account_Group]        INT             NULL,
    [Account_Type]         NVARCHAR (20)   NULL,
    [Logical_Account_Type] NVARCHAR (4000) NULL,
    [Legder_Acount_Flag]   NVARCHAR (1)    NULL,
    [CheckSum]             NVARCHAR (32)   NULL,
    [CheckSumSCD1]         NVARCHAR (32)   NULL,
    [CheckSumSCD2]         NVARCHAR (32)   NULL,
    [IsActual]             INT             NOT NULL,
    [IsInferred]           INT             NULL,
    [IsDeleted]            INT             NULL,
    [EffectiveDate]        DATE            NOT NULL,
    [ExpiryDate]           DATE            NULL,
    [InsertDateTime]       DATETIME2 (7)   NULL,
    [UpdateDateTime]       DATETIME2 (7)   NULL,
    [BatchID]              BIGINT          NOT NULL,
    [ProcessLogID]         BIGINT          NULL,
    CONSTRAINT [PK_D_Account] PRIMARY KEY CLUSTERED ([D_Account_Skey] ASC) WITH (FILLFACTOR = 80)
);
