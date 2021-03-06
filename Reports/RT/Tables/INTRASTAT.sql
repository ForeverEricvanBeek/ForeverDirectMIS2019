﻿CREATE TABLE [RT].[INTRASTAT] (
    [INTRASTAT_ID]            INT             NULL,
    [TRANSACTION_ID]          INT             NULL,
    [TRANSACTION]             NVARCHAR (10)   NULL,
    [ORDER_TYPE]              NVARCHAR (4000) NULL,
    [CONTRACT]                NVARCHAR (5)    NULL,
    [COMPONENT_PART]          NVARCHAR (25)   NULL,
    [DESCRIPTION]             NVARCHAR (200)  NULL,
    [ORDER_REF1]              NVARCHAR (12)   NULL,
    [QUANTITY]                INT             NULL,
    [PRINT_UNIT]              NVARCHAR (30)   NULL,
    [DATE_APPLIED]            DATETIME2 (7)   NULL,
    [WEIGHT_NET]              INT             NULL,
    [CUSTOMS_STAT_NO]         NVARCHAR (10)   NULL,
    [INTRASTAT_ALT_QTY]       INT             NULL,
    [INTRASTAT_ALT_UNIT_MEAS] NVARCHAR (10)   NULL,
    [INTRASTAT_DIRECTION]     NVARCHAR (4000) NULL,
    [COUNTRY_OF_ORIGIN]       NVARCHAR (2)    NULL,
    [INTRASTAT_ORIGIN]        NVARCHAR (4000) NULL,
    [OPPOSITE_COUNTRY]        NVARCHAR (2)    NULL,
    [OPPONENT_NUMBER]         NVARCHAR (20)   NULL,
    [OPPONENT_NAME]           NVARCHAR (4000) NULL,
    [ORDER_UNIT_PRICE]        INT             NULL,
    [UNIT_ADD_COST_AMOUNT]    INT             NULL,
    [UNIT_CHARGE_AMOUNT]      INT             NULL,
    [MODE_OF_TRANSPORT]       NVARCHAR (4000) NULL,
    [INVOICE_SERIE]           NVARCHAR (20)   NULL,
    [INVOICE_NUMBER]          NVARCHAR (50)   NULL,
    [SALE_UNIT_PRICE]         INT             NULL,
    [INVOICED_AMOUNT]         INT             NULL,
    [COUNTRY_CODE]            NVARCHAR (4000) NULL,
    [Request_ID]              BIGINT          NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL
);





