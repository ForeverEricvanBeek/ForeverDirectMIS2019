CREATE TABLE [Control].[RebuildIndex] (
    [ID]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [IndexSQL]    NVARCHAR (500) NULL,
    [Timestamp]   DATETIME2 (7)  CONSTRAINT [DF_RebuildIndex_Timestamp] DEFAULT (getdate()) NULL,
    [IndexStatus] NVARCHAR (50)  CONSTRAINT [DF_RebuildIndex_Status] DEFAULT (N'Created') NULL,
    CONSTRAINT [PK_RebuildIndex] PRIMARY KEY CLUSTERED ([ID] ASC)
);

