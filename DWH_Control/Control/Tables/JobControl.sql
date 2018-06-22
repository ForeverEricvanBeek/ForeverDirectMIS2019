CREATE TABLE [Control].[JobControl] (
    [Sourcesystem] NVARCHAR (50) NOT NULL,
    [Source]       NVARCHAR (50) NULL,
    [Date]         DATETIME2 (7) CONSTRAINT [DF_JobControl_Date] DEFAULT (getdate()) NULL
);

