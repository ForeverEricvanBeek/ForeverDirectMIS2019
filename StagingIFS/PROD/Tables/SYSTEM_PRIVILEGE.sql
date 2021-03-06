﻿CREATE TABLE [PROD].[SYSTEM_PRIVILEGE] (
    [PRIVILEGE_ID] NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (100)  NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (14)   NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_SYSTEM_PRIVILEGE] PRIMARY KEY CLUSTERED ([PRIVILEGE_ID] ASC)
);

