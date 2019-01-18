CREATE TABLE [WEB_ARC].[TransporterURL] (
    [TransporterURL_ShipVia] NVARCHAR (50)  NOT NULL,
    [TransporterURL_Link]    NVARCHAR (150) NULL,
    [TransporterURL_Link2]   NVARCHAR (150) NULL,
    [TransporterURL_Zipcode] BIT            NULL,
    [Eff_Date]               DATE           NOT NULL,
    [End_Date]               DATE           NULL,
    [ActInd]                 CHAR (1)       NULL,
    [IsDeleted]              CHAR (1)       NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_Transporter_URL] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TransporterURL_ShipVia] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

