CREATE TABLE [WEB].[FormShipmentCallCSNList] (
    [FormShipmentCallCSNList_ID]                  BIGINT         NOT NULL,
    [FormShipmentCallCSNList_FormShipmentCall_ID] BIGINT         NOT NULL,
    [FormShipmentCallCSNList_CSN]                 NVARCHAR (20)  NOT NULL,
    [FormShipmentCallCSNList_UpdatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallCSNList_UpdatedDate]         DATETIME2 (7)  NULL,
    [FormShipmentCallCSNList_CreatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallCSNList_CreatedDate]         DATETIME2 (7)  NULL,
    [BatchID]                                     BIGINT         NULL,
    [ProcessLogID]                                BIGINT         NULL,
    CONSTRAINT [PK_web.FormShipmentCallCSNList] PRIMARY KEY CLUSTERED ([FormShipmentCallCSNList_ID] ASC)
);

