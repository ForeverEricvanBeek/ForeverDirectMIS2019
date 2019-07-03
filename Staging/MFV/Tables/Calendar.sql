CREATE TABLE [MFV].[Calendar] (
    [DateID]                INT      NOT NULL,
    [Date]                  DATETIME NULL,
    [Day]                   INT      NULL,
    [Month]                 INT      NULL,
    [Year]                  INT      NULL,
    [ModificationTimestamp] DATETIME NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED ([DateID] ASC)
);

