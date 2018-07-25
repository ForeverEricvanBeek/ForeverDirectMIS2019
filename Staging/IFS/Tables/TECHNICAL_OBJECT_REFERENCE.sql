CREATE TABLE [IFS].[TECHNICAL_OBJECT_REFERENCE] (
    [TECHNICAL_SPEC_NO] INT             NOT NULL,
    [LU_NAME]           NVARCHAR (30)   NULL,
    [KEY_REF]           NVARCHAR (600)  NULL,
    [KEY_VALUE]         NVARCHAR (500)  NULL,
    [TECHNICAL_CLASS]   NVARCHAR (10)   NULL,
    [OK_YES_NO]         NVARCHAR (4000) NULL,
    [OK_YES_NO_DB]      NVARCHAR (1)    NULL,
    [OK_SIGN]           NVARCHAR (30)   NULL,
    [DT_OK]             DATETIME2 (7)   NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL
);

