CREATE TABLE [AFAS].[DWH_Medewerker_verzuimverloop] (
    [Medewerker]        NVARCHAR (256)  NULL,
    [VerzuimmeldingID]  INT             NULL,
    [DatumTijd]         DATE            NULL,
    [Aanwezigheid]      DECIMAL (18, 2) NULL,
    [AanwezigheidAT]    DECIMAL (18, 2) NULL,
    [Omschrijving]      NVARCHAR (2000) NULL,
    [BegindatumVerzuim] DATETIME2 (7)   NULL,
    [EinddatumVerzuim]  DATETIME2 (7)   NULL,
    [GUID]              NVARCHAR (256)  NOT NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_verzuimverloop] PRIMARY KEY CLUSTERED ([GUID] ASC)
);

