﻿CREATE TABLE [IFS].[PRES_OBJECT] (
    [PO_ID]               NVARCHAR (200)  NOT NULL,
    [PRES_OBJECT_TYPE]    NVARCHAR (80)   NULL,
    [PRES_OBJECT_TYPE_DB] NVARCHAR (200)  NULL,
    [MODULE]              NVARCHAR (24)   NULL,
    [INFO_TYPE]           NVARCHAR (80)   NULL,
    [DESCRIPTION]         NVARCHAR (4000) NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (4000) NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_PRES_OBJECT] PRIMARY KEY CLUSTERED ([PO_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





