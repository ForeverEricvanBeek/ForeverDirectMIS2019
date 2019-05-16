CREATE TABLE [IFS].[FND_ROLE] (
    [ROLE]         NVARCHAR (30)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_FND_ROLE] PRIMARY KEY CLUSTERED ([ROLE] ASC)
);

