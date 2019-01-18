CREATE TABLE [WEB].[TransporterManual] (
    [TransporterManual_Code]        NVARCHAR (10)  NOT NULL,
    [TransporterManual_New]         NVARCHAR (10)  NOT NULL,
    [TransporterManual_Name]        NVARCHAR (100) NULL,
    [TransporterManual_ShipViaCode] NVARCHAR (4)   NOT NULL,
    [BatchID]                       BIGINT         NULL,
    [ProcessLogID]                  BIGINT         NULL,
    CONSTRAINT [PK_Transporter_Manual] PRIMARY KEY CLUSTERED ([TransporterManual_Code] ASC, [TransporterManual_New] ASC, [TransporterManual_ShipViaCode] ASC)
);

