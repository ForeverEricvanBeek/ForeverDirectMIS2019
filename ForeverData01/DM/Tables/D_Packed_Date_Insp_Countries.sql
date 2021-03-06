﻿CREATE TABLE [DM].[D_Packed_Date_Insp_Countries] (
    [D_Packed_Date_Insp_Countries_Skey] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Order_ID]                          NVARCHAR (50) NOT NULL,
    [Packed_Time]                       DATETIME2 (7) NULL,
    [Country_Code]                      NVARCHAR (2)  NULL,
    [CheckSum]                          NVARCHAR (32) NULL,
    [CheckSumSCD1]                      NVARCHAR (32) NULL,
    [CheckSumSCD2]                      NVARCHAR (32) NULL,
    [IsActual]                          INT           NOT NULL,
    [IsInferred]                        INT           NULL,
    [IsDeleted]                         INT           NULL,
    [EffectiveDate]                     DATE          NOT NULL,
    [ExpiryDate]                        DATE          NULL,
    [InsertDateTime]                    DATETIME2 (7) NULL,
    [UpdateDateTime]                    DATETIME2 (7) NULL,
    [BatchID]                           BIGINT        NOT NULL,
    [ProcessLogID]                      BIGINT        NULL,
    CONSTRAINT [PK_D_Packed_Date_Insp_Countries] PRIMARY KEY CLUSTERED ([D_Packed_Date_Insp_Countries_Skey] ASC) WITH (FILLFACTOR = 80)
);

