CREATE TABLE [IFS].[C_EXT_SHIP_CONFIRM] (
    [APPLICATION_MESSAGE_ID] INT             NOT NULL,
    [SHIPMENT_ID]            INT             NOT NULL,
    [WMS_STATE]              INT             NULL,
    [SHIP_VIA_CODE]          NVARCHAR (3)    NULL,
    [ORDER_ID]               NVARCHAR (3)    NULL,
    [WMS_SHIPMENT_ID]        NVARCHAR (20)   NULL,
    [ERROR_MESSAGE]          NVARCHAR (2000) NULL,
    [PREBILL_CHECK]          NVARCHAR (5)    NULL,
    [SHIPCONFIRM_CHECK]      NVARCHAR (5)    NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (14)   NULL,
    [OBJSTATE]               NVARCHAR (4000) NULL,
    [OBJEVENTS]              NVARCHAR (4000) NULL,
    [STATE]                  NVARCHAR (4000) NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_C_EXT_SHIP_CONFIRM] PRIMARY KEY CLUSTERED ([APPLICATION_MESSAGE_ID] ASC, [SHIPMENT_ID] ASC, [Eff_Date] ASC)
);

