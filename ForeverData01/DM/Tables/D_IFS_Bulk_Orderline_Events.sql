﻿CREATE TABLE [DM].[D_IFS_Bulk_Orderline_Events] (
    [D_IFS_Bulk_Orderline_Events_Skey] BIGINT          IDENTITY (1, 1) NOT NULL,
    [Order_NO]                         NVARCHAR (600)  NULL,
    [Line_NO]                          NUMERIC (18)    NULL,
    [Line_Item_NO]                     NVARCHAR (600)  NOT NULL,
    [REL_NO]                           NVARCHAR (600)  NULL,
    [SKU_Name]                         NVARCHAR (25)   NULL,
    [Old_Value]                        NVARCHAR (2000) NULL,
    [New_Value]                        NVARCHAR (2000) NULL,
    [UserName]                         NVARCHAR (30)   NULL,
    [History_Type]                     NVARCHAR (4000) NULL,
    [Object_Version]                   NVARCHAR (2000) NULL,
    [Time_Stamp]                       DATETIME2 (7)   NULL,
    [RN]                               BIGINT          NULL,
    [CheckSum]                         NVARCHAR (32)   NULL,
    [CheckSumSCD1]                     NVARCHAR (32)   NULL,
    [CheckSumSCD2]                     NVARCHAR (32)   NULL,
    [IsActual]                         INT             NOT NULL,
    [IsInferred]                       INT             NULL,
    [IsDeleted]                        INT             NULL,
    [EffectiveDate]                    DATE            NOT NULL,
    [ExpiryDate]                       DATE            NULL,
    [InsertDateTime]                   DATETIME2 (7)   NULL,
    [UpdateDateTime]                   DATETIME2 (7)   NULL,
    [BatchID]                          BIGINT          NOT NULL,
    [ProcessLogID]                     BIGINT          NULL,
    CONSTRAINT [PK_D_IFS_Bulk_Orderline_Events] PRIMARY KEY CLUSTERED ([D_IFS_Bulk_Orderline_Events_Skey] ASC) WITH (FILLFACTOR = 80)
);

