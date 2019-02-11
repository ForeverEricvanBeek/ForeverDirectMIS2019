CREATE TABLE [IFS_ARC].[SHIPMENT_HANDLING_UNIT] (
    [HANDLING_UNIT_ID]        INT             NOT NULL,
    [PALLET_TYPE_ON_LABEL]    NVARCHAR (50)   NULL,
    [NO_OF_PACKAGES_ON_LABEL] INT             NULL,
    [GROSS_WEIGHT_ON_LABEL]   INT             NULL,
    [PALLET_TYPE]             NVARCHAR (25)   NULL,
    [SHIPMENT_ID]             INT             NULL,
    [HANDLING_UNIT_TYPE]      NVARCHAR (4000) NULL,
    [HANDLING_UNIT_TYPE_DB]   NVARCHAR (200)  NULL,
    [NET_WEIGHT]              INT             NULL,
    [HANDLING_UNIT_WEIGHT]    INT             NULL,
    [VOLUME]                  INT             NULL,
    [TYPE_OF_GOODS]           NVARCHAR (35)   NULL,
    [SSCC]                    NVARCHAR (18)   NULL,
    [C_TRANSPORT_TYPE]        NVARCHAR (30)   NULL,
    [C_TRANSPORT_ID]          NVARCHAR (25)   NULL,
    [C_PARCEL_NO]             NVARCHAR (50)   NULL,
    [C_WMS_HANDLING_UNIT_ID]  NVARCHAR (50)   NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [Eff_Date]                DATE            NOT NULL,
    [End_Date]                DATE            NULL,
    [ActInd]                  CHAR (1)        NULL,
    [IsDeleted]               CHAR (1)        NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_SHIPMENT_HANDLING_UNIT] PRIMARY KEY CLUSTERED ([HANDLING_UNIT_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





