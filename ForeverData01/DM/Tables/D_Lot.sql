﻿CREATE TABLE [DM].[D_Lot] (
    [D_Lot_Skey]         BIGINT          IDENTITY (1, 1) NOT NULL,
    [SKU_Code]           INT             NOT NULL,
    [Lot_Code]           NVARCHAR (115)  NOT NULL,
    [Status_Code]        SMALLINT        NULL,
    [Status_Description] NVARCHAR (15)   NULL,
    [Received_Date]      DATETIME2 (7)   NULL,
    [Expire_Date]        DATETIME2 (7)   NULL,
    [Expire_Flag]        NVARCHAR (1)    NULL,
    [Cost_Price]         DECIMAL (22, 5) NULL,
    [CheckSum]           NVARCHAR (32)   NULL,
    [CheckSumSCD1]       NVARCHAR (32)   NULL,
    [CheckSumSCD2]       NVARCHAR (32)   NULL,
    [IsActual]           INT             NOT NULL,
    [IsInferred]         INT             NULL,
    [IsDeleted]          INT             NULL,
    [EffectiveDate]      DATE            NOT NULL,
    [ExpiryDate]         DATE            NULL,
    [InsertDateTime]     DATETIME2 (7)   NULL,
    [UpdateDateTime]     DATETIME2 (7)   NULL,
    [BatchID]            BIGINT          NOT NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_D_Lot] PRIMARY KEY CLUSTERED ([D_Lot_Skey] ASC) WITH (FILLFACTOR = 80)
);



