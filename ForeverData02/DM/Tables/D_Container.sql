﻿CREATE TABLE [DM].[D_Container] (
    [D_Container_Skey]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [Container_ID]           NVARCHAR (8)  NULL,
    [Container_Size]         NVARCHAR (3)  NULL,
    [Container_Description]  NVARCHAR (35) NULL,
    [Container_Max_Volume]   INT           NULL,
    [Container_Empty_Weight] NVARCHAR (10) NULL,
    [Container_Length]       INT           NULL,
    [Container_Width]        INT           NULL,
    [Container_Height]       INT           NULL,
    [CheckSum]               NVARCHAR (32) NULL,
    [CheckSumSCD1]           NVARCHAR (32) NULL,
    [CheckSumSCD2]           NVARCHAR (32) NULL,
    [IsActual]               INT           NOT NULL,
    [IsInferred]             INT           NULL,
    [IsDeleted]              INT           NULL,
    [EffectiveDate]          DATE          NOT NULL,
    [ExpiryDate]             DATE          NULL,
    [InsertDateTime]         DATETIME2 (7) NULL,
    [UpdateDateTime]         DATETIME2 (7) NULL,
    [BatchID]                BIGINT        NOT NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_D_Container] PRIMARY KEY CLUSTERED ([D_Container_Skey] ASC) WITH (FILLFACTOR = 80)
);



