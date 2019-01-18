CREATE TABLE [WEB].[TransporterStatus] (
    [TransporterStatus_Carrier]     NVARCHAR (50) NOT NULL,
    [TransporterStatus_ShipVia]     NVARCHAR (50) NOT NULL,
    [TransporterStatus_Status]      NVARCHAR (50) NOT NULL,
    [TransporterStatus_Description] NVARCHAR (50) NULL,
    [TransporterStatus_LeadTime]    TINYINT       NULL,
    [TransporterStatus_Sort]        TINYINT       NULL,
    [TransporterStatus_Category]    NVARCHAR (1)  NULL,
    [BatchID]                       BIGINT        NULL,
    [ProcessLogID]                  BIGINT        NULL,
    CONSTRAINT [PK_Transporter_Status] PRIMARY KEY CLUSTERED ([TransporterStatus_Carrier] ASC, [TransporterStatus_ShipVia] ASC, [TransporterStatus_Status] ASC)
);

