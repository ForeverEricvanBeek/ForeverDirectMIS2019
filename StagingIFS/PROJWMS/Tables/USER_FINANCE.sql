﻿CREATE TABLE [PROJWMS].[USER_FINANCE] (
    [COMPANY]         NVARCHAR (20)   NOT NULL,
    [USERID]          NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]     NVARCHAR (4000) NULL,
    [DEFAULT_COMPANY] NVARCHAR (20)   NULL,
    [OBJID]           NVARCHAR (4000) NULL,
    [OBJVERSION]      NVARCHAR (2000) NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_USER_FINANCE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [USERID] ASC)
);
