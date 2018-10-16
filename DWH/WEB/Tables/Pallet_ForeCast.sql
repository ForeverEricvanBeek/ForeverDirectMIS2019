﻿CREATE TABLE [WEB].[Pallet_ForeCast] (
    [Pallet_ForeCast_ID] BIGINT          NOT NULL,
    [WAT]                NVARCHAR (20)   NULL,
    [SCHEDULED_DTTM]     DATETIME2 (7)   NULL,
    [CARRIER_CODE]       NVARCHAR (10)   NULL,
    [DSG_SHIP_VIA]       NVARCHAR (10)   NULL,
    [SHIPMENT]           NVARCHAR (50)   NULL,
    [SHIP_VIA_DESC]      NVARCHAR (150)  NULL,
    [BOX_TYPE]           NVARCHAR (5)    NULL,
    [ORDERS]             INT             NULL,
    [OLPNS_WAVED]        INT             NULL,
    [OLPNS_STAGED]       INT             NULL,
    [OLPNS_NOT_WAVED]    NUMERIC (18, 2) NULL,
    [OLPN_PALLET_VOLUME] NUMERIC (18, 2) NULL,
    [PALLET_OLPN]        NUMERIC (18, 2) NULL,
    [PALLET_VOLUME]      INT             NULL,
    [PALLET_NEEDED]      NUMERIC (18, 2) NULL,
    [PALLET_READY]       NUMERIC (18, 2) NULL,
    [OLPN_VOLUME_CM3]    NUMERIC (18, 2) NULL,
    [CONTAINER_VOLUME]   NUMERIC (18, 4) NULL,
    [CREATED_DTTM]       DATETIME2 (7)   NULL,
    [Eff_Date]           DATE            NOT NULL,
    [End_Date]           DATE            NULL,
    [ActInd]             CHAR (1)        NULL,
    [IsDeleted]          CHAR (1)        NULL,
    [BatchID]            BIGINT          NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_Pallet_ForeCast] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [Pallet_ForeCast_ID] ASC) ON [DWH_WEB]
) ON [DWH_WEB];



