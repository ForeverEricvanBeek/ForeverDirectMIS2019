﻿CREATE TABLE [IFS].[FND_ROLE] (
    [ROLE]             NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]      NVARCHAR (200)  NULL,
    [CREATED]          DATETIME2 (7)   NULL,
    [FND_ROLE_TYPE]    NVARCHAR (4000) NULL,
    [FND_ROLE_TYPE_DB] NVARCHAR (20)   NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL
);

