CREATE TABLE [MANH_ARC].[DOCK_DOOR_REF] (
    [DOCK_DOOR_ID]             INT           NOT NULL,
    [ASN_ID]                   INT           NULL,
    [SHIPMENT_ID]              INT           NULL,
    [APPOINTMENT_ID]           INT           NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT           NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [CREATED_SOURCE_TYPE]      INT           NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [TRAILER_NUMBER]           NVARCHAR (50) NULL,
    [CARRIER_ID]               INT           NULL,
    [TRAILER_ID]               INT           NULL,
    [Eff_Date]                 DATE          NOT NULL,
    [End_Date]                 DATE          NULL,
    [ActInd]                   CHAR (1)      NULL,
    [IsDeleted]                CHAR (1)      NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_DOCK_DOOR_REF] PRIMARY KEY CLUSTERED ([DOCK_DOOR_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



