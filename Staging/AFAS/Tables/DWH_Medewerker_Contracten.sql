CREATE TABLE [AFAS].[DWH_Medewerker_Contracten] (
    [Medewerker]                   NVARCHAR (256)  NOT NULL,
    [DatumInDienst]                DATE            NULL,
    [DatumUitDienst]               DATE            NULL,
    [DatumBeginContract]           DATE            NOT NULL,
    [DatumEindContract]            DATE            NULL,
    [TypeContractCode]             NVARCHAR (2000) NULL,
    [TypeContractOmschrijving]     NVARCHAR (2000) NULL,
    [SoortMedewerkerCode]          NVARCHAR (2000) NULL,
    [SoortMedewerkerOmschrijving]  NVARCHAR (2000) NULL,
    [DienstbetrekkingCode]         NVARCHAR (2000) NULL,
    [DienstbetrekkingOmschrijving] NVARCHAR (2000) NULL,
    [DienstjarenInDienst]          DATE            NULL,
    [VolgnummerDienstverband]      BIGINT          NULL,
    [Werkgever]                    NVARCHAR (2000) NULL,
    [NaamWerkgever]                NVARCHAR (2000) NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_DWH_Medewerker_Contracten] PRIMARY KEY CLUSTERED ([Medewerker] ASC, [DatumBeginContract] ASC)
);

