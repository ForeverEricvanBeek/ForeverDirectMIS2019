CREATE TABLE [WEB].[FormShipmentCallCSNList] (
    [FormShipmentCallCSNList_ID]                  BIGINT         NOT NULL,
    [FormShipmentCallCSNList_FormShipmentCall_ID] BIGINT         NOT NULL,
    [FormShipmentCallCSNList_CSN]                 NVARCHAR (20)  NOT NULL,
    [FormShipmentCallCSNList_SN]                  NVARCHAR (20)  NULL,
    [FormShipmentCallCSNList_UpdatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallCSNList_UpdatedDate]         DATETIME2 (7)  NULL,
    [FormShipmentCallCSNList_CreatedBy]           NVARCHAR (256) NULL,
    [FormShipmentCallCSNList_CreatedDate]         DATETIME2 (7)  NULL,
    [Eff_Date]                                    DATE           NOT NULL,
    [End_Date]                                    DATE           NULL,
    [ActInd]                                      CHAR (1)       NULL,
    [IsDeleted]                                   CHAR (1)       NULL,
    [BatchID]                                     BIGINT         NULL,
    [ProcessLogID]                                BIGINT         NULL,
    CONSTRAINT [PK_web.FormShipmentCallCSNList] PRIMARY KEY CLUSTERED ([FormShipmentCallCSNList_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB]
) ON [DWH_WEB];



