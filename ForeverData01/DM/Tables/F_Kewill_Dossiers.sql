CREATE TABLE [DM].[F_Kewill_Dossiers] (
    [Dossier_ID]            BIGINT        NOT NULL,
    [Inv_Date_Kewill]       DATE          NULL,
    [Kewill_ref]            NVARCHAR (15) NULL,
    [Department]            NVARCHAR (4)  NULL,
    [ASN_ID]                NVARCHAR (50) NULL,
    [Shipment_ID]           NVARCHAR (50) NULL,
    [Ship_Confirm_Date]     DATETIME2 (7) NULL,
    [Dock_Time]             DATETIME2 (7) NULL,
    [Ship_Via]              NVARCHAR (4)  NULL,
    [Country_Code]          NVARCHAR (2)  NULL,
    [KPI_DOCK_Inbound]      DATETIME2 (7) NULL,
    [Inbound_Result]        INT           NULL,
    [KPI_outbound]          DATETIME2 (7) NULL,
    [Outbound_Result]       INT           NULL,
    [Start_Dossier_Aanmaak] DATETIME2 (7) NULL,
    [End_Dossier_Aanmaak]   DATETIME2 (7) NULL,
    [InsertDateTime]        DATETIME2 (7) NULL,
    [UpdateDateTime]        DATETIME2 (7) NULL,
    [BatchID]               BIGINT        NOT NULL,
    [ProcessLogID]          BIGINT        NULL
);

