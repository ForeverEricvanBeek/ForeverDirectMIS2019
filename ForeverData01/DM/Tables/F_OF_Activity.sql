CREATE TABLE [DM].[F_OF_Activity] (
    [DateKey]           BIGINT        NOT NULL,
    [D_Pickers_Skey]    BIGINT        NOT NULL,
    [D_Lane_Skey]       BIGINT        NOT NULL,
    [Logged_In_Minutes] INT           NULL,
    [InsertDateTime]    DATETIME2 (7) NULL,
    [UpdateDateTime]    DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NOT NULL,
    [ProcessLogID]      BIGINT        NULL
);

