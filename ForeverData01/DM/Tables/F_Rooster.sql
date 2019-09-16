CREATE TABLE [DM].[F_Rooster] (
    [D_Afas_Medewerker_Skey]                   BIGINT          NOT NULL,
    [BegindatumRooster]                        DATE            NOT NULL,
    [EinddatumRooster]                         DATE            NOT NULL,
    [FTE]                                      DECIMAL (18, 2) NULL,
    [D_Afas_Functies_Skey]                     BIGINT          NOT NULL,
    [D_Afas_Organisatie_eenheid_Skey]          BIGINT          NOT NULL,
    [D_Afas_Kostenplaats_Skey]                 BIGINT          NOT NULL,
    [VolgnummerOrganisatorischeEenheidFunctie] INT             NULL,
    [Werkgever]                                NVARCHAR (2000) NULL,
    [NaamWerkgever]                            NVARCHAR (2000) NULL,
    [D_Afas_Contract_Soort_Skey]               BIGINT          NOT NULL,
    [D_Afas_Dienstbetrekking_Skey]             BIGINT          NOT NULL,
    [D_Afas_Medewerker_Soort_Skey]             BIGINT          NOT NULL,
    [InsertDateTime]                           DATETIME2 (7)   NOT NULL,
    [UpdateDateTime]                           DATETIME2 (7)   NOT NULL,
    [BatchID]                                  BIGINT          NOT NULL,
    [ProcessLogID]                             BIGINT          NOT NULL
);

