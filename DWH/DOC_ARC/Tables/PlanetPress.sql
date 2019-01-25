CREATE TABLE [DOC_ARC].[PlanetPress] (
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
    CONSTRAINT [PK_PlanetPress] PRIMARY KEY CLUSTERED ([olpn] ASC, [name] ASC, [Eff_Date] ASC, [archiveDateTime] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_DOC_ARC]
) ON [DWH_DOC_ARC];





