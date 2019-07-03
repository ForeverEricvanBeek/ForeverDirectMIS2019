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
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_Salarissen_Stamgegevens] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [BegindatumSalaris] ASC, [Eff_Date] ASC) ON [DWH_AFAS]
) ON [DWH_AFAS];

