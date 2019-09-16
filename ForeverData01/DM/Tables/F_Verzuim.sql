CREATE TABLE [DM].[F_Verzuim] (
    [D_Afas_Medewerker_Skey]          BIGINT          NOT NULL,
    [VerzuimmeldingID]                INT             NOT NULL,
    [Start_periode]                   DATE            NULL,
    [Eind_periode]                    DATE            NULL,
    [VerwachteEinddatum]              DATE            NULL,
    [EinddatumVerzuim]                DATETIME2 (7)   NULL,
    [Aanwezigheid]                    NUMERIC (21, 4) NULL,
    [Afwezigheid]                     NUMERIC (22, 4) NULL,
    [FTE]                             DECIMAL (18, 2) NULL,
    [D_Afas_Kostenplaats_Skey]        BIGINT          NOT NULL,
    [D_Afas_Organisatie_eenheid_Skey] BIGINT          NOT NULL,
    [D_Afas_Functies_Skey]            BIGINT          NOT NULL,
    [D_Afas_Contract_Soort_Skey]      BIGINT          NOT NULL,
    [RN]                              BIGINT          NULL,
    [M_RN]                            BIGINT          NULL,
    [InsertDateTime]                  DATETIME2 (7)   NOT NULL,
    [UpdateDateTime]                  DATETIME2 (7)   NOT NULL,
    [BatchID]                         BIGINT          NOT NULL,
    [ProcessLogID]                    BIGINT          NOT NULL
);

