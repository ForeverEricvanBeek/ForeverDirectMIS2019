﻿CREATE TABLE [IFS].[INVOICE_ITEM] (
    [COMPANY]                  NVARCHAR (20)   NOT NULL,
    [IDENTITY]                 NVARCHAR (20)   NULL,
    [PARTY_TYPE]               NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]            NVARCHAR (20)   NULL,
    [INVOICE_ID]               INT             NOT NULL,
    [ITEM_ID]                  INT             NOT NULL,
    [ITEM_DATA]                NVARCHAR (2000) NULL,
    [REFERENCE]                NVARCHAR (200)  NULL,
    [CREATOR]                  NVARCHAR (30)   NULL,
    [VAT_CODE]                 NVARCHAR (20)   NULL,
    [DELIV_TYPE_ID]            NVARCHAR (20)   NULL,
    [CORRECTED_ITEM_ID]        INT             NULL,
    [NET_CURR_CODE]            NVARCHAR (3)    NULL,
    [NET_RATE]                 INT             NULL,
    [NET_DIV_FACTOR]           INT             NULL,
    [NET_CURR_AMOUNT]          INT             NULL,
    [NET_DOM_AMOUNT]           INT             NULL,
    [VAT_CURR_AMOUNT]          INT             NULL,
    [VAT_DOM_AMOUNT]           INT             NULL,
    [DB_NET_AMOUNT]            NVARCHAR (2000) NULL,
    [DB_VAT_AMOUNT]            NVARCHAR (2000) NULL,
    [VAT_CURR_CODE]            NVARCHAR (3)    NULL,
    [VAT_RATE]                 INT             NULL,
    [VAT_DIV_FACTOR]           INT             NULL,
    [FETCHED]                  NVARCHAR (5)    NULL,
    [C1]                       NVARCHAR (100)  NULL,
    [C2]                       NVARCHAR (100)  NULL,
    [C3]                       NVARCHAR (2000) NULL,
    [C4]                       NVARCHAR (100)  NULL,
    [C5]                       NVARCHAR (2000) NULL,
    [C6]                       NVARCHAR (2000) NULL,
    [C7]                       NVARCHAR (100)  NULL,
    [C8]                       NVARCHAR (100)  NULL,
    [C9]                       NVARCHAR (100)  NULL,
    [C10]                      NVARCHAR (100)  NULL,
    [C11]                      NVARCHAR (100)  NULL,
    [C12]                      NVARCHAR (100)  NULL,
    [C13]                      NVARCHAR (100)  NULL,
    [C14]                      NVARCHAR (100)  NULL,
    [C15]                      NVARCHAR (100)  NULL,
    [C16]                      NVARCHAR (100)  NULL,
    [C17]                      NVARCHAR (100)  NULL,
    [C18]                      NVARCHAR (100)  NULL,
    [C19]                      NVARCHAR (100)  NULL,
    [C20]                      NVARCHAR (100)  NULL,
    [N1]                       INT             NULL,
    [N2]                       INT             NULL,
    [N3]                       INT             NULL,
    [N4]                       INT             NULL,
    [N5]                       INT             NULL,
    [N6]                       INT             NULL,
    [N7]                       INT             NULL,
    [N8]                       INT             NULL,
    [N9]                       INT             NULL,
    [N10]                      INT             NULL,
    [N11]                      INT             NULL,
    [N12]                      INT             NULL,
    [N13]                      INT             NULL,
    [N14]                      INT             NULL,
    [D1]                       DATETIME2 (7)   NULL,
    [D2]                       DATETIME2 (7)   NULL,
    [D3]                       DATETIME2 (7)   NULL,
    [D4]                       DATETIME2 (7)   NULL,
    [REASON_CODE_ID]           NVARCHAR (20)   NULL,
    [COPY_TAX_FROM_ID]         INT             NULL,
    [COPY_TAX_FROM_ITEM]       INT             NULL,
    [IRS1099_TYPE_ID]          NVARCHAR (4000) NULL,
    [INTERNAL_INCOME_TYPE]     INT             NULL,
    [WITHHELD_TAX_CURR_AMOUNT] INT             NULL,
    [WITHHELD_TAX_DOM_AMOUNT]  INT             NULL,
    [MULTIPLE_TAX]             NVARCHAR (4000) NULL,
    [SERIES_REFERENCE]         NVARCHAR (20)   NULL,
    [NUMBER_REFERENCE]         NVARCHAR (50)   NULL,
    [DEBIT_INVOICE_ID]         INT             NULL,
    [INVOICE_TYPE]             NVARCHAR (20)   NULL,
    [PREL_UPDATE_ALLOWED]      NVARCHAR (5)    NULL,
    [MAN_TAX_LIABILITY_DATE]   DATETIME2 (7)   NULL,
    [ALLOCATION_ID]            INT             NULL,
    [C_TAX_NET_CURR_AMT]       INT             NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (30)   NULL,
    [OBJEVENTS]                NVARCHAR (253)  NULL,
    [STATE]                    NVARCHAR (253)  NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL
);

