﻿CREATE TABLE [IFS].[SUPPLIER_INFO_ADDRESS_TYPE] (
    [SUPPLIER_ID]          NVARCHAR (20)   NOT NULL,
    [ADDRESS_ID]           NVARCHAR (50)   NOT NULL,
    [ADDRESS_TYPE_CODE]    NVARCHAR (4000) NULL,
    [ADDRESS_TYPE_CODE_DB] NVARCHAR (20)   NOT NULL,
    [PARTY]                NVARCHAR (20)   NULL,
    [DEF_ADDRESS]          NVARCHAR (5)    NULL,
    [DEFAULT_DOMAIN]       NVARCHAR (5)    NULL,
    [OBJID]                NVARCHAR (4000) NULL,
    [OBJVERSION]           NVARCHAR (2000) NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL
);

