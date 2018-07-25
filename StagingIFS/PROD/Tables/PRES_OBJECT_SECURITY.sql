CREATE TABLE [PROD].[PRES_OBJECT_SECURITY] (
    [PO_ID]                       NVARCHAR (200)  NOT NULL,
    [SEC_OBJECT]                  NVARCHAR (200)  NOT NULL,
    [PRES_OBJECT_SEC_SUB_TYPE]    NVARCHAR (4000) NULL,
    [PRES_OBJECT_SEC_SUB_TYPE_DB] NVARCHAR (20)   NULL,
    [SEC_OBJECT_TYPE]             NVARCHAR (4000) NULL,
    [SEC_OBJECT_TYPE_DB]          NVARCHAR (50)   NULL,
    [INFO_TYPE]                   NVARCHAR (20)   NULL,
    [OBJID]                       NVARCHAR (4000) NULL,
    [OBJVERSION]                  NVARCHAR (2000) NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_PRES_OBJECT_SECURITY] PRIMARY KEY CLUSTERED ([PO_ID] ASC, [SEC_OBJECT] ASC)
);

