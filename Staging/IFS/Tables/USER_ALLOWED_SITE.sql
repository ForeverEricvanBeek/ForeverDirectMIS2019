CREATE TABLE [IFS].[USER_ALLOWED_SITE] (
    [USERID]            NVARCHAR (30)   NOT NULL,
    [CONTRACT]          NVARCHAR (5)    NOT NULL,
    [USER_SITE_TYPE]    NVARCHAR (4000) NULL,
    [USER_SITE_TYPE_DB] NVARCHAR (200)  NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL
);

