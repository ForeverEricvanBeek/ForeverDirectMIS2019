CREATE TABLE [WEB].[FormShipmentCallImages] (
    [FormShipmentCallImages_ID]                  BIGINT         NOT NULL,
    [FormShipmentCallImages_FormShipmentCall_ID] BIGINT         NOT NULL,
    [FormShipmentCallImages_ImageLink]           NVARCHAR (MAX) NULL,
    [FormShipmentCallImages_UpdatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallImages_UpdatedDate]         DATETIME2 (7)  NULL,
    [FormShipmentCallImages_CreatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallImages_CreatedDate]         DATETIME2 (7)  NULL,
    [BatchID]                                    BIGINT         NULL,
    [ProcessLogID]                               BIGINT         NULL,
    CONSTRAINT [PK_web.FormShipmentCallImages] PRIMARY KEY CLUSTERED ([FormShipmentCallImages_ID] ASC)
);

