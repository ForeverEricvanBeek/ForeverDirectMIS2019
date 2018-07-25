﻿CREATE TABLE [IFS].[INTRASTAT_LINE] (
    [INTRASTAT_ID]             INT             NOT NULL,
    [LINE_NO]                  INT             NOT NULL,
    [TRANSACTION_ID]           INT             NULL,
    [TRANSACTION]              NVARCHAR (10)   NULL,
    [ORDER_TYPE]               NVARCHAR (4000) NULL,
    [ORDER_TYPE_DB]            NVARCHAR (20)   NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [PART_NO]                  NVARCHAR (25)   NULL,
    [PART_DESCRIPTION]         NVARCHAR (200)  NULL,
    [CONFIGURATION_ID]         NVARCHAR (50)   NULL,
    [LOT_BATCH_NO]             NVARCHAR (20)   NULL,
    [SERIAL_NO]                NVARCHAR (50)   NULL,
    [ORDER_REF1]               NVARCHAR (12)   NULL,
    [ORDER_REF2]               NVARCHAR (4)    NULL,
    [ORDER_REF3]               NVARCHAR (30)   NULL,
    [ORDER_REF4]               INT             NULL,
    [INVENTORY_DIRECTION]      NVARCHAR (1)    NULL,
    [QUANTITY]                 INT             NULL,
    [QTY_REVERSED]             INT             NULL,
    [UNIT_MEAS]                NVARCHAR (10)   NULL,
    [REJECT_CODE]              NVARCHAR (8)    NULL,
    [DATE_APPLIED]             DATETIME2 (7)   NULL,
    [USERID]                   NVARCHAR (30)   NULL,
    [NET_UNIT_WEIGHT]          INT             NULL,
    [CUSTOMS_STAT_NO]          NVARCHAR (10)   NULL,
    [INTRASTAT_ALT_QTY]        INT             NULL,
    [INTRASTAT_ALT_UNIT_MEAS]  NVARCHAR (10)   NULL,
    [NOTC]                     NVARCHAR (4000) NULL,
    [NOTC_DB]                  NVARCHAR (2)    NULL,
    [INTRASTAT_DIRECTION]      NVARCHAR (4000) NULL,
    [INTRASTAT_DIRECTION_DB]   NVARCHAR (20)   NULL,
    [COUNTRY_OF_ORIGIN]        NVARCHAR (2)    NULL,
    [INTRASTAT_ORIGIN]         NVARCHAR (4000) NULL,
    [INTRASTAT_ORIGIN_DB]      NVARCHAR (15)   NULL,
    [OPPOSITE_COUNTRY]         NVARCHAR (2)    NULL,
    [OPPONENT_NUMBER]          NVARCHAR (20)   NULL,
    [OPPONENT_NAME]            NVARCHAR (4000) NULL,
    [ORDER_UNIT_PRICE]         INT             NULL,
    [UNIT_ADD_COST_AMOUNT]     INT             NULL,
    [UNIT_CHARGE_AMOUNT]       INT             NULL,
    [MODE_OF_TRANSPORT]        NVARCHAR (4000) NULL,
    [MODE_OF_TRANSPORT_DB]     NVARCHAR (1)    NULL,
    [INVOICE_SERIE]            NVARCHAR (20)   NULL,
    [INVOICE_NUMBER]           NVARCHAR (50)   NULL,
    [INVOICED_UNIT_PRICE]      INT             NULL,
    [UNIT_ADD_COST_AMOUNT_INV] INT             NULL,
    [UNIT_CHARGE_AMOUNT_INV]   INT             NULL,
    [DELIVERY_TERMS]           NVARCHAR (3)    NULL,
    [TRIANGULATION]            NVARCHAR (4000) NULL,
    [TRIANGULATION_DB]         NVARCHAR (20)   NULL,
    [REGION_PORT]              NVARCHAR (10)   NULL,
    [STATISTICAL_PROCEDURE]    NVARCHAR (4000) NULL,
    [STATISTICAL_PROCEDURE_DB] NVARCHAR (25)   NULL,
    [COUNTRY_CODE]             NVARCHAR (4000) NULL,
    [REGION_OF_ORIGIN]         NVARCHAR (10)   NULL,
    [COUNTY]                   NVARCHAR (35)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (20)   NULL,
    [OBJEVENTS]                NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_INTRASTAT_LINE] PRIMARY KEY CLUSTERED ([INTRASTAT_ID] ASC, [LINE_NO] ASC, [Eff_Date] ASC)
);

