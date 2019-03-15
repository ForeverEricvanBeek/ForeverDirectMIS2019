﻿CREATE TABLE [PROJWMS].[ISO_UNIT] (
    [UNIT_CODE]      NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]    NVARCHAR (4000) NULL,
    [PRESENT_FACTOR] NVARCHAR (4000) NULL,
    [BASE_UNIT]      NVARCHAR (30)   NULL,
    [MULTI_FACTOR]   BIGINT          NULL,
    [DIV_FACTOR]     INT             NULL,
    [TEN_POWER]      INT             NULL,
    [USER_DEFINED]   NVARCHAR (5)    NULL,
    [UNIT_TYPE]      NVARCHAR (4000) NULL,
    [UNIT_TYPE_DB]   NVARCHAR (10)   NULL,
    [OBJID]          NVARCHAR (4000) NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    CONSTRAINT [PK_ISO_UNIT] PRIMARY KEY CLUSTERED ([UNIT_CODE] ASC)
);

