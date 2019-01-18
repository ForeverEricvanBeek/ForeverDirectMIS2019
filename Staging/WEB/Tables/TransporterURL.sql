CREATE TABLE [WEB].[TransporterURL] (
    [TransporterURL_ShipVia] NVARCHAR (50)  NOT NULL,
    [TransporterURL_Link]    NVARCHAR (150) NULL,
    [TransporterURL_Link2]   NVARCHAR (150) NULL,
    [TransporterURL_Zipcode] BIT            NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_Transporter_URL] PRIMARY KEY CLUSTERED ([TransporterURL_ShipVia] ASC)
);

