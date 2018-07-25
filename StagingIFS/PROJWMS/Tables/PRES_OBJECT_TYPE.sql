﻿CREATE TABLE [PROJWMS].[PRES_OBJECT_TYPE] (
    [TYPE]         NVARCHAR (50)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (200)  NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_PRES_OBJECT_TYPE] PRIMARY KEY CLUSTERED ([TYPE] ASC)
);

