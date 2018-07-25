﻿CREATE TABLE [PROD].[SALES_PART_CROSS_REFERENCE] (
    [CUSTOMER_NO]              NVARCHAR (20)   NOT NULL,
    [CONTRACT]                 NVARCHAR (5)    NOT NULL,
    [CUSTOMER_PART_NO]         NVARCHAR (45)   NOT NULL,
    [CATALOG_NO]               NVARCHAR (25)   NULL,
    [CUSTOMER_UNIT_MEAS]       NVARCHAR (50)   NULL,
    [CATALOG_DESC]             NVARCHAR (200)  NULL,
    [CONV_FACTOR]              INT             NULL,
    [SELF_BILLING]             NVARCHAR (4000) NULL,
    [SELF_BILLING_DB]          NVARCHAR (20)   NULL,
    [RECEIVING_ADVICE_TYPE]    NVARCHAR (4000) NULL,
    [RECEIVING_ADVICE_TYPE_DB] NVARCHAR (30)   NULL,
    [MIN_DURAB_DAYS_CO_DELIV]  INT             NULL,
    [C_SHIP_UOM]               NVARCHAR (100)  NULL,
    [C_SHIP_UOM_CONV]          INT             NULL,
    [C_GENERIC_DESC]           NVARCHAR (100)  NULL,
    [C_CONTENTS]               NVARCHAR (100)  NULL,
    [C_DATA1]                  NVARCHAR (100)  NULL,
    [C_DATA2]                  NVARCHAR (100)  NULL,
    [C_DATA3]                  NVARCHAR (100)  NULL,
    [C_DATA4]                  NVARCHAR (100)  NULL,
    [C_COMMODITY_CODE]         NVARCHAR (16)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_SALES_PART_CROSS_REFERENCE] PRIMARY KEY CLUSTERED ([CUSTOMER_PART_NO] ASC, [CONTRACT] ASC, [CUSTOMER_NO] ASC)
);

