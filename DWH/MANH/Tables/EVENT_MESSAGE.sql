﻿CREATE TABLE [MANH].[EVENT_MESSAGE] (
    [EVENT_MESSAGE_ID] INT            NOT NULL,
    [EVENT_ID]         INT            NULL,
    [WHSE]             NVARCHAR (3)   NULL,
    [NBR_OF_RETRY]     INT            NOT NULL,
    [STAT_CODE]        INT            NOT NULL,
    [ERROR_SEQ_NBR]    INT            NOT NULL,
    [CREATE_DATE_TIME] DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]    DATETIME2 (7)  NULL,
    [USER_ID]          NVARCHAR (15)  NULL,
    [CL_MESSAGE_ID]    INT            NULL,
    [ELS_ACTVTY_CODE]  NVARCHAR (15)  NULL,
    [CD_MASTER_ID]     INT            NULL,
    [WM_VERSION_ID]    INT            NOT NULL,
    [EK_WAVE_NBR]      NVARCHAR (100) NULL,
    [EK_ILPN_NBR]      NVARCHAR (100) NULL,
    [EK_OLPN_NBR]      NVARCHAR (100) NULL,
    [EK_IPLT_NBR]      NVARCHAR (100) NULL,
    [EK_OPLT_NBR]      NVARCHAR (100) NULL,
    [EK_ORDER_NBR]     NVARCHAR (100) NULL,
    [EK_ITEM_ID]       NVARCHAR (100) NULL,
    [EK_SEAL_NBR]      NVARCHAR (100) NULL,
    [EK_SHIPMENT_NBR]  NVARCHAR (100) NULL,
    [EK_ASN_NBR]       NVARCHAR (100) NULL,
    [EK_TRAILER_NBR]   NVARCHAR (100) NULL,
    [EK_TASK_ID]       NVARCHAR (100) NULL,
    [EK_PICK_LOCN_ID]  NVARCHAR (100) NULL,
    [EK_DEST_LOCN_ID]  NVARCHAR (100) NULL,
    [EK_PULL_LOCN_ID]  NVARCHAR (100) NULL,
    [EVENT_KEY]        NVARCHAR (100) NULL,
    [Eff_Date]         DATE           NOT NULL,
    [End_Date]         DATE           NULL,
    [ActInd]           CHAR (1)       NULL,
    [IsDeleted]        CHAR (1)       NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_MANH_EVENT_MESSAGE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [EVENT_MESSAGE_ID] ASC)
);
