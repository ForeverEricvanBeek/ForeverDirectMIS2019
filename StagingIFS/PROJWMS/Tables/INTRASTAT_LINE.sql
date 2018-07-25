﻿CREATE TABLE [PROJWMS].[INTRASTAT_LINE] (
    [INTRASTAT_ID]             INT             NOT NULL,
    [LINE_NO]                  INT             NOT NULL,
    [TRANSACTION_ID]           INT             NULL,
    [TRANSACTION]              NVARCHAR (40)   NULL,
    [ORDER_TYPE]               NVARCHAR (4000) NULL,
    [ORDER_TYPE_DB]            NVARCHAR (80)   NULL,
    [CONTRACT]                 NVARCHAR (20)   NULL,
    [PART_NO]                  NVARCHAR (100)  NULL,
    [PART_DESCRIPTION]         NVARCHAR (800)  NULL,
    [CONFIGURATION_ID]         NVARCHAR (200)  NULL,
    [LOT_BATCH_NO]             NVARCHAR (80)   NULL,
    [SERIAL_NO]                NVARCHAR (200)  NULL,
    [ORDER_REF1]               NVARCHAR (48)   NULL,
    [ORDER_REF2]               NVARCHAR (16)   NULL,
    [ORDER_REF3]               NVARCHAR (120)  NULL,
    [ORDER_REF4]               INT             NULL,
    [INVENTORY_DIRECTION]      NVARCHAR (4)    NULL,
    [QUANTITY]                 INT             NULL,
    [QTY_REVERSED]             INT             NULL,
    [UNIT_MEAS]                NVARCHAR (40)   NULL,
    [REJECT_CODE]              NVARCHAR (32)   NULL,
    [DATE_APPLIED]             DATETIME2 (7)   NULL,
    [USERID]                   NVARCHAR (120)  NULL,
    [NET_UNIT_WEIGHT]          INT             NULL,
    [CUSTOMS_STAT_NO]          NVARCHAR (40)   NULL,
    [INTRASTAT_ALT_QTY]        INT             NULL,
    [INTRASTAT_ALT_UNIT_MEAS]  NVARCHAR (40)   NULL,
    [NOTC]                     NVARCHAR (4000) NULL,
    [NOTC_DB]                  NVARCHAR (8)    NULL,
    [INTRASTAT_DIRECTION]      NVARCHAR (4000) NULL,
    [INTRASTAT_DIRECTION_DB]   NVARCHAR (80)   NULL,
    [COUNTRY_OF_ORIGIN]        NVARCHAR (8)    NULL,
    [INTRASTAT_ORIGIN]         NVARCHAR (4000) NULL,
    [INTRASTAT_ORIGIN_DB]      NVARCHAR (60)   NULL,
    [OPPOSITE_COUNTRY]         NVARCHAR (8)    NULL,
    [OPPONENT_NUMBER]          NVARCHAR (80)   NULL,
    [OPPONENT_NAME]            NVARCHAR (4000) NULL,
    [ORDER_UNIT_PRICE]         INT             NULL,
    [UNIT_ADD_COST_AMOUNT]     INT             NULL,
    [UNIT_CHARGE_AMOUNT]       INT             NULL,
    [MODE_OF_TRANSPORT]        NVARCHAR (4000) NULL,
    [MODE_OF_TRANSPORT_DB]     NVARCHAR (4)    NULL,
    [INVOICE_SERIE]            NVARCHAR (80)   NULL,
    [INVOICE_NUMBER]           NVARCHAR (200)  NULL,
    [INVOICED_UNIT_PRICE]      INT             NULL,
    [UNIT_ADD_COST_AMOUNT_INV] INT             NULL,
    [UNIT_CHARGE_AMOUNT_INV]   INT             NULL,
    [DELIVERY_TERMS]           NVARCHAR (12)   NULL,
    [TRIANGULATION]            NVARCHAR (4000) NULL,
    [TRIANGULATION_DB]         NVARCHAR (80)   NULL,
    [REGION_PORT]              NVARCHAR (40)   NULL,
    [STATISTICAL_PROCEDURE]    NVARCHAR (4000) NULL,
    [STATISTICAL_PROCEDURE_DB] NVARCHAR (100)  NULL,
    [COUNTRY_CODE]             NVARCHAR (4000) NULL,
    [REGION_OF_ORIGIN]         NVARCHAR (40)   NULL,
    [COUNTY]                   NVARCHAR (140)  NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (4000) NULL,
    [OBJSTATE]                 NVARCHAR (80)   NULL,
    [OBJEVENTS]                NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_INTRASTAT_LINE] PRIMARY KEY CLUSTERED ([INTRASTAT_ID] ASC, [LINE_NO] ASC)
);

