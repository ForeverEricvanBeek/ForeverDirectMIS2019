CREATE TABLE [IFS_ARC].[SHIPMENT_PACKAGE_UNIT] (
    [PACKAGE_UNIT_ID]        INT             NOT NULL,
    [QUANTITY]               INT             NULL,
    [LOT_BATCH_NO]           NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL]          NVARCHAR (25)   NULL,
    [QUANTITY_ON_LABEL]      INT             NULL,
    [LOT_BATCH_NO_ON_LABEL]  NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL_ON_LABEL] NVARCHAR (25)   NULL,
    [PACKAGE_TYPE_ON_LABEL]  NVARCHAR (25)   NULL,
    [HANDLING_UNIT_ID]       INT             NULL,
    [PACKAGE_TYPE]           NVARCHAR (10)   NULL,
    [SHIPMENT_ID]            INT             NULL,
    [ORDER_NO]               NVARCHAR (12)   NULL,
    [LINE_NO]                NVARCHAR (4)    NULL,
    [REL_NO]                 NVARCHAR (4)    NULL,
    [LINE_ITEM_NO]           INT             NULL,
    [SERIAL_NO]              NVARCHAR (50)   NULL,
    [NET_WEIGHT]             DECIMAL (18, 2) NULL,
    [HANDLING_UNIT_WEIGHT]   DECIMAL (18, 2) NULL,
    [VOLUME]                 INT             NULL,
    [TYPE_OF_GOODS]          NVARCHAR (35)   NULL,
    [SSCC]                   NVARCHAR (18)   NULL,
    [WAIV_DEV_REJ_NO]        NVARCHAR (15)   NULL,
    [LOCATION_NO]            NVARCHAR (35)   NULL,
    [PICK_LIST_NO]           NVARCHAR (15)   NULL,
    [C_TRANSPORT_TYPE]       NVARCHAR (30)   NULL,
    [C_TRANSPORT_ID]         NVARCHAR (25)   NULL,
    [C_PARCEL_NO]            NVARCHAR (50)   NULL,
    [C_WMS_PACKAGE_UNIT_ID]  NVARCHAR (50)   NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_SHIPMENT_PACKAGE_UNIT] PRIMARY KEY CLUSTERED ([PACKAGE_UNIT_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





