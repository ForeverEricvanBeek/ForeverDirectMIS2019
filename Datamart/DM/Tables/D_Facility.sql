﻿CREATE TABLE [DM].[D_Facility] (
    [D_Facility_Skey]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [Facility_ID]           NVARCHAR (16) NOT NULL,
    [Facility_Name]         NVARCHAR (50) NOT NULL,
    [Facility_Address_1]    NVARCHAR (75) NULL,
    [Facility_Address_2]    NVARCHAR (75) NULL,
    [Facility_Address_3]    NVARCHAR (75) NULL,
    [Facility_City]         NVARCHAR (40) NULL,
    [Facility_Prov]         NVARCHAR (3)  NULL,
    [Facility_Postal_Code]  NVARCHAR (10) NULL,
    [Facility_Country_Code] NVARCHAR (2)  NOT NULL,
    [CheckSum]              NVARCHAR (32) NULL,
    [CheckSumSCD1]          NVARCHAR (32) NULL,
    [CheckSumSCD2]          NVARCHAR (32) NULL,
    [IsActual]              INT           NOT NULL,
    [IsInferred]            INT           NULL,
    [IsDeleted]             INT           NULL,
    [EffectiveDate]         DATE          NOT NULL,
    [ExpiryDate]            DATE          NULL,
    [InsertDateTime]        DATETIME2 (7) NULL,
    [UpdateDateTime]        DATETIME2 (7) NULL,
    [BatchID]               BIGINT        NOT NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_D_Facility] PRIMARY KEY CLUSTERED ([D_Facility_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_Facility_Facility]
    ON [DM].[D_Facility]([Facility_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

