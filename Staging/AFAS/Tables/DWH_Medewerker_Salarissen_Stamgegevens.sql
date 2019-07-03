CREATE TABLE [AFAS].[DWH_Medewerker_Salarissen_Stamgegevens] (
    [Medewerker]          NVARCHAR (256)  NOT NULL,
    [BegindatumSalaris]   DATE            NOT NULL,
    [EinddatumSalaris]    DATE            NULL,
    [Salaris]             DECIMAL (18, 2) NULL,
    [SalarisCode]         NVARCHAR (2000) NULL,
    [SalarisOmschrijving] NVARCHAR (2000) NULL,
    [SchaalCode]          NVARCHAR (2000) NULL,
    [SchaalOmschrijving]  NVARCHAR (2000) NULL,
    [Trede]               DECIMAL (18, 2) NULL,
    [Toeslag]             DECIMAL (18, 2) NULL,
    [ToeslagPerc]         BIT             NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_Salarissen_Stamgegevens] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [BegindatumSalaris] ASC)
);

