CREATE TABLE [DM].[F_OF_Productivity_QC_Repack] (
    [DateKey]         DATE          NOT NULL,
    [Pickers_ID]      NVARCHAR (6)  NULL,
    [Lane]            SMALLINT      NULL,
    [Action]          VARCHAR (6)   NULL,
    [Start_tijd]      TIME (7)      NULL,
    [Eind_tijd]       TIME (7)      NULL,
    [Working_Sec]     INT           NULL,
    [Number_Of_Packs] INT           NULL,
    [InsertDateTime]  DATETIME2 (7) NULL,
    [UpdateDateTime]  DATETIME2 (7) NULL,
    [BatchID]         BIGINT        NOT NULL,
    [ProcessLogID]    BIGINT        NULL
);

