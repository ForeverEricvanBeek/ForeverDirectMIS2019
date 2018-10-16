CREATE TABLE [Logging].[DatabaseSize] (
    [ID]            BIGINT          IDENTITY (1, 1) NOT NULL,
    [DATABASE_NAME] [sysname]       NOT NULL,
    [LOGICAL_NAME]  [sysname]       NOT NULL,
    [FILE_SIZE_MB]  DECIMAL (12, 2) NULL,
    [SPACE_USED_MB] DECIMAL (12, 2) NULL,
    [FREE_SPACE_MB] DECIMAL (12, 2) NULL,
    [FILE_NAME]     [sysname]       NOT NULL,
    [CREATE_DATE]   DATETIME2 (7)   CONSTRAINT [DF_DatabaseSize_CREATE_DATE] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_DatabaseSize] PRIMARY KEY CLUSTERED ([ID] ASC)
);

