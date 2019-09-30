﻿CREATE TABLE [DM].[D_Employee] (
    [D_Employee_Skey]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [Employee_Key]                    NVARCHAR (10)  NOT NULL,
    [Employee_ID]                     NVARCHAR (50)  NULL,
    [Employee_Badge_id]               INT            NULL,
    [Employee_Name]                   NVARCHAR (100) NULL,
    [Employee_Department_Code]        NVARCHAR (50)  NULL,
    [Employee_Department_Description] NVARCHAR (50)  NULL,
    [Employee_Costcenter_Code]        NVARCHAR (50)  NULL,
    [Employee_Costcenter_Description] NVARCHAR (50)  NULL,
    [Employee_Supervisor]             NVARCHAR (50)  NULL,
    [IND_Timing]                      BIT            NULL,
    [Employer]                        NVARCHAR (50)  NULL,
    [Employee_Start_Date]             DATETIME2 (7)  NULL,
    [Employee_End_Date]               DATETIME2 (7)  NULL,
    [CheckSum]                        NVARCHAR (32)  NULL,
    [CheckSumSCD1]                    NVARCHAR (32)  NULL,
    [CheckSumSCD2]                    NVARCHAR (32)  NULL,
    [IsActual]                        INT            NULL,
    [IsInferred]                      INT            NULL,
    [IsDeleted]                       INT            NULL,
    [EffectiveDate]                   DATE           NULL,
    [ExpiryDate]                      DATE           NULL,
    [InsertDateTime]                  DATETIME2 (7)  NULL,
    [UpdateDateTime]                  DATETIME2 (7)  NULL,
    [BatchID]                         BIGINT         NULL,
    [ProcessLogID]                    BIGINT         NULL,
    CONSTRAINT [PK_D_Employee] PRIMARY KEY CLUSTERED ([D_Employee_Skey] ASC) WITH (FILLFACTOR = 80)
);
