CREATE TABLE [TPX7_ARC].[VW_FORWARDER_STATUS] (
    [SHIPMENT_LOG_ID]             BIGINT        NOT NULL,
    [SHIPMENT_ID]                 INT           NOT NULL,
    [SHIPMENT_LINE_NR]            INT           NULL,
    [SHIPMENT_EVENT_NR]           DECIMAL (4)   NOT NULL,
    [SHIPMENT_EVENT_TS]           DATETIME      NOT NULL,
    [SHIPMENT_EVENT_CODE]         VARCHAR (20)  NULL,
    [FORWARDER_CODE]              VARCHAR (3)   NULL,
    [FORWARDER_REFERENCE]         VARCHAR (20)  NULL,
    [SHIPPER_SHIPMENT_REF]        VARCHAR (256) NULL,
    [REMARKS]                     TEXT          NULL,
    [USER_ID]                     INT           NOT NULL,
    [FORWARDER_EVENT_CODE]        VARCHAR (20)  NULL,
    [CREATED_ON]                  DATETIME      NOT NULL,
    [SHIPMENT_EVENT_TS_UTC]       DATETIME      NULL,
    [SHIPMENT_EVENT_TS_OFFSET]    VARCHAR (10)  NULL,
    [FORWARDER_EVENT_TYPE_CODE]   VARCHAR (20)  NULL,
    [FORWARDER_EVENT_DESCRIPTION] VARCHAR (300) NULL,
    [SHIPMENT_EVENT_TYPE]         VARCHAR (20)  NULL,
    [SHIPMENT_EVENT_DESCRIPTION]  VARCHAR (100) NULL,
    [SHIPMENT_STATUS]             VARCHAR (10)  NULL,
    [SHIPMENT_STATUS_NAME]        VARCHAR (200) NULL,
    [FILEDATE]                    DATETIME      NULL,
    [FILENAME]                    VARCHAR (255) NULL,
    [RESPONSIBLE]                 VARCHAR (20)  NULL,
    [Eff_Date]                    DATE          NOT NULL,
    [End_Date]                    DATE          NULL,
    [ActInd]                      CHAR (1)      NULL,
    [IsDeleted]                   CHAR (1)      NULL,
    [BatchID]                     BIGINT        NULL,
    [ProcessLogID]                BIGINT        NULL,
    CONSTRAINT [PK_FORWARDER_STATUS] PRIMARY KEY CLUSTERED ([SHIPMENT_LOG_ID] ASC, [Eff_Date] ASC) ON [DWH_TPX7_ARC]
) ON [DWH_TPX7_ARC];





