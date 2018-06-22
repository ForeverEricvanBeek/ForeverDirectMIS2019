CREATE TABLE [DOC].[PlanetPress] (
    [olpn]            NVARCHAR (50) NOT NULL,
    [name]            NVARCHAR (50) NOT NULL,
    [path]            NVARCHAR (50) NULL,
    [archiveDateTime] INT           NOT NULL,
    [Eff_Date]        DATE          NOT NULL,
    [End_Date]        DATE          NULL,
    [ActInd]          CHAR (1)      NULL,
    [IsDeleted]       CHAR (1)      NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_PlanetPress] PRIMARY KEY CLUSTERED ([olpn] ASC, [name] ASC, [archiveDateTime] ASC, [Eff_Date] ASC)
);

