CREATE TABLE [MANH_ARC].[SHIPMENT_COMMODITY] (
    [SHIPMENT_ID]         INT             NOT NULL,
    [COMMODITY_CLASS]     INT             NOT NULL,
    [TC_COMPANY_ID]       INT             NOT NULL,
    [SIZE_VALUE]          DECIMAL (16, 4) NULL,
    [REPORTED_SIZE_VALUE] DECIMAL (13, 2) NULL,
    [SHIPPED_SIZE_VALUE]  DECIMAL (16, 4) NULL,
    [RECEIVED_SIZE_VALUE] DECIMAL (16, 4) NULL,
    [SIZE_UOM_ID]         INT             NOT NULL,
    [HIBERNATE_VERSION]   INT             NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_COMMODITY] PRIMARY KEY CLUSTERED ([COMMODITY_CLASS] ASC, [Eff_Date] ASC, [SHIPMENT_ID] ASC, [SIZE_UOM_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





