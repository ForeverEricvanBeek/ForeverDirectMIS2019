CREATE TABLE [DM].[F_OF_Productivity_Lus] (
    [DateKey]         BIGINT        NOT NULL,
    [Pickers_ID]      NVARCHAR (50) NULL,
    [Lus]             VARCHAR (5)   NULL,
    [Starttijd]       CHAR (30)     NULL,
    [Eindtijd]        CHAR (30)     NULL,
    [Working_Sec]     INT           NULL,
    [Number_Of_Units] INT           NULL,
    [Number_Of_Picks] INT           NULL,
    [InsertDateTime]  DATETIME2 (7) NULL,
    [UpdateDateTime]  DATETIME2 (7) NULL,
    [BatchID]         BIGINT        NOT NULL,
    [ProcessLogID]    BIGINT        NULL
);

