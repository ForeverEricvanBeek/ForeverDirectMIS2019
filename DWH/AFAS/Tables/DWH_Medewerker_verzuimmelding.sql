CREATE TABLE [AFAS].[DWH_Medewerker_verzuimmelding] (
    [Medewerker]          NVARCHAR (256)  NULL,
    [Begindatum]          DATE            NULL,
    [VerwachteEinddatum]  DATE            NULL,
    [Einddatum]           DATE            NULL,
    [Omschrijving]        NVARCHAR (2000) NULL,
    [Aanwezigheid]        INT             NULL,
    [Vangnetregeling]     BIT             NULL,
    [Dienstverband]       BIGINT          NULL,
    [VerzuimmeldingID]    BIGINT          NOT NULL,
    [Begintijd]           TIME (7)        NULL,
    [Eindtijd]            TIME (7)        NULL,
    [MeldingBeginVerzuim] DATETIME2 (7)   NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_verzuimmelding] PRIMARY KEY CLUSTERED ([VerzuimmeldingID] ASC, [Eff_Date] ASC) ON [DWH_AFAS]
) ON [DWH_AFAS];





