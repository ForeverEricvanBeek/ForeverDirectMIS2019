CREATE TABLE [IFS].[TECHNICAL_SPECIFICATION_BOTH] (
    [TECHNICAL_SPEC_NO] INT             NOT NULL,
    [TECHNICAL_CLASS]   NVARCHAR (10)   NULL,
    [ATTRIBUTE]         NVARCHAR (15)   NOT NULL,
    [ATTRIB_NUMBER]     INT             NULL,
    [VALUE_TEXT]        NVARCHAR (20)   NULL,
    [VALUE_NO]          INT             NULL,
    [ALT_VALUE_NO]      INT             NULL,
    [LOWER_LIMIT]       INT             NULL,
    [UPPER_LIMIT]       INT             NULL,
    [ALT_UNIT]          NVARCHAR (30)   NULL,
    [INFO]              NVARCHAR (2000) NULL,
    [ROWTYPE]           NVARCHAR (30)   NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL
);

