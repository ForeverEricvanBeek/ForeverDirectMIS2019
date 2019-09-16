CREATE TABLE [AFAS].[DWH_Medewerker_journaalpost] (
    [Salarisverwerking]                   INT             NULL,
    [Medewerker]                          NVARCHAR (256)  NOT NULL,
    [Looncomponent]                       INT             NOT NULL,
    [VolgnummerLooncomponent]             INT             NULL,
    [Omschrijvingklant]                   NVARCHAR (2000) NULL,
    [Salarisverwerkingsplan]              INT             NOT NULL,
    [Volgnummer]                          INT             NOT NULL,
    [Grootboekrekening]                   NVARCHAR (2000) NULL,
    [Omschrijving]                        NVARCHAR (2000) NULL,
    [Jaar]                                INT             NOT NULL,
    [Periode]                             INT             NOT NULL,
    [BedragDebet]                         DECIMAL (18, 2) NULL,
    [BedragCredit]                        DECIMAL (18, 2) NULL,
    [Kostenplaats]                        NVARCHAR (2000) NULL,
    [OmschrijvingKostenplaats]            NVARCHAR (2000) NULL,
    [OrganisatorischeEenheid]             NVARCHAR (50)   NOT NULL,
    [OrganisatorischeEenheidOmschrijving] NVARCHAR (2000) NULL,
    [VolgnummerCorrectie]                 INT             NULL,
    [Periode_Betaald]                     INT             NULL,
    [Eff_Date]                            DATE            NOT NULL,
    [End_Date]                            DATE            NULL,
    [ActInd]                              CHAR (1)        NULL,
    [IsDeleted]                           CHAR (1)        NULL,
    [BatchID]                             BIGINT          NULL,
    [ProcessLogID]                        BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_journaalpost] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [Looncomponent] ASC, [Salarisverwerkingsplan] ASC, [Volgnummer] ASC, [Jaar] ASC, [Periode] ASC, [OrganisatorischeEenheid] ASC, [Eff_Date] ASC) ON [DWH_AFAS]
) ON [DWH_AFAS];



