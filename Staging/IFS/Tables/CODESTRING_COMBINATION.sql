CREATE TABLE [IFS].[CODESTRING_COMBINATION] (
    [POSTING_COMBINATION_ID] INT             NOT NULL,
    [ACCOUNT]                NVARCHAR (20)   NULL,
    [CODE_B]                 NVARCHAR (20)   NULL,
    [CODE_C]                 NVARCHAR (20)   NULL,
    [CODE_D]                 NVARCHAR (20)   NULL,
    [CODE_E]                 NVARCHAR (20)   NULL,
    [CODE_F]                 NVARCHAR (20)   NULL,
    [CODE_G]                 NVARCHAR (20)   NULL,
    [CODE_H]                 NVARCHAR (20)   NULL,
    [CODE_I]                 NVARCHAR (20)   NULL,
    [CODE_J]                 NVARCHAR (20)   NULL,
    [CODESTRING]             NVARCHAR (200)  NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_CODESTRING_COMBINATION] PRIMARY KEY CLUSTERED ([POSTING_COMBINATION_ID] ASC)
);

