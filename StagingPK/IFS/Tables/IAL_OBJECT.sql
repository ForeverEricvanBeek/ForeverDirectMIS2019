CREATE TABLE [IFS].[IAL_OBJECT] (
    [NAME]         NVARCHAR (30)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_IAL_OBJECT] PRIMARY KEY CLUSTERED ([NAME] ASC)
);

