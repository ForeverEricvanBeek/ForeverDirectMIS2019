CREATE TABLE [AFAS].[DWH_Medewerker_Roosters] (
    [Medewerker]         NVARCHAR (256)  NOT NULL,
    [BegindatumRooster]  DATE            NOT NULL,
    [EinddatumRooster]   DATE            NULL,
    [AantalDagenPerWeek] DECIMAL (18, 2) NULL,
    [AantalUrenPerWeek]  DECIMAL (18, 2) NULL,
    [FTE]                DECIMAL (18, 2) NULL,
    [Parttime]           DECIMAL (18, 2) NULL,
    [BatchID]            BIGINT          NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_Roosters] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [BegindatumRooster] ASC)
);

