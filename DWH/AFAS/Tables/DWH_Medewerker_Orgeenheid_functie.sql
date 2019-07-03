CREATE TABLE [AFAS].[DWH_Medewerker_Orgeenheid_functie] (
    [Medewerker]                               NVARCHAR (256)  NOT NULL,
    [Begindatum]                               DATE            NOT NULL,
    [Einddatum]                                DATE            NULL,
    [Orgeenheid]                               NVARCHAR (2000) NULL,
    [OrgeenheidOmschrijving]                   NVARCHAR (2000) NULL,
    [FunctieCode]                              NVARCHAR (2000) NULL,
    [FunctieOmschrijving]                      NVARCHAR (2000) NULL,
    [Kostenplaats]                             NVARCHAR (2000) NULL,
    [KostenplaatsOmschrijving]                 NVARCHAR (2000) NULL,
    [VolgnummerOrganisatorischeEenheidFunctie] INT             NULL,
    [Eff_Date]                                 DATE            NOT NULL,
    [End_Date]                                 DATE            NULL,
    [ActInd]                                   CHAR (1)        NULL,
    [IsDeleted]                                CHAR (1)        NULL,
    [BatchID]                                  BIGINT          NULL,
    [ProcessLogID]                             BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_Orgeenheid_functie] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [Begindatum] ASC, [Eff_Date] ASC) ON [DWH_AFAS]
) ON [DWH_AFAS];

