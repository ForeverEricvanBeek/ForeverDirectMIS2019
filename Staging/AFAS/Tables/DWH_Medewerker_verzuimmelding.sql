CREATE TABLE [AFAS].[DWH_Medewerker_verzuimmelding] (
    [Medewerker]          NVARCHAR (256)  NULL,
    [Begindatum]          DATE            NULL,
    [VerwachteEinddatum]  DATE            NULL,
    [Einddatum]           DATE            NULL,
    [Omschrijving]        NVARCHAR (2000) NULL,
    [Aanwezigheid]        DECIMAL (18, 2) NULL,
    [Vangnetregeling]     BIT             NULL,
    [Dienstverband]       BIGINT          NULL,
    [VerzuimmeldingID]    BIGINT          NOT NULL,
    [Begintijd]           TIME (7)        NULL,
    [Eindtijd]            TIME (7)        NULL,
    [MeldingBeginVerzuim] DATETIME2 (7)   NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_verzuimmelding] PRIMARY KEY CLUSTERED ([VerzuimmeldingID] ASC)
);



