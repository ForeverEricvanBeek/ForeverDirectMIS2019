CREATE TABLE [RC].[Purge] (
    [Purge_ID]     BIGINT         IDENTITY (1, 1) NOT NULL,
    [Purge_Code]   NVARCHAR (MAX) NULL,
    [Purge_Date]   DATETIME2 (7)  CONSTRAINT [DF_Purge_Purge_Date] DEFAULT (getdate()) NULL,
    [Purge_Status] NVARCHAR (256) NULL,
    CONSTRAINT [PK_Purge] PRIMARY KEY CLUSTERED ([Purge_ID] ASC)
);

