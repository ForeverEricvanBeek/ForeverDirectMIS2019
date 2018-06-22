CREATE TABLE [DM].[D_Shipment] (
    [D_Shipment_Skey]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [Shipment_ID]           NVARCHAR (50) NOT NULL,
    [Shipment_Status]       NVARCHAR (20) NOT NULL,
    [Shipment_Carrier_Code] NVARCHAR (8)  NULL,
    [Shipment_Updated]      DATETIME2 (7) NULL,
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
    CONSTRAINT [D_Shipment_Skey] PRIMARY KEY CLUSTERED ([D_Shipment_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_Shipment_Shipment]
    ON [DM].[D_Shipment]([Shipment_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

