CREATE TABLE [WEB].[TransporterStatus] (
    [TransporterStatus_Carrier]     NVARCHAR (50) NOT NULL,
    [TransporterStatus_ShipVia]     NVARCHAR (50) NOT NULL,
    [TransporterStatus_Status]      NVARCHAR (50) NOT NULL,
    [TransporterStatus_Description] NVARCHAR (50) NULL,
    [TransporterStatus_LeadTime]    TINYINT       NULL,
    [TransporterStatus_Sort]        TINYINT       NULL,
    [TransporterStatus_Category]    NVARCHAR (1)  NULL,
    [Eff_Date]                      DATE          NOT NULL,
    [End_Date]                      DATE          NULL,
    [ActInd]                        CHAR (1)      NULL,
    [IsDeleted]                     CHAR (1)      NULL,
    [BatchID]                       BIGINT        NULL,
    [ProcessLogID]                  BIGINT        NULL,
    CONSTRAINT [PK_Transporter_Status] PRIMARY KEY CLUSTERED ([TransporterStatus_Carrier] ASC, [TransporterStatus_ShipVia] ASC, [TransporterStatus_Status] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_WEB]
) ON [DWH_WEB];




GO
EXECUTE sp_addextendedproperty @name = N'comments', @value = N'D=Delivered,F=First Scan,P=Pickup Point', @level0type = N'SCHEMA', @level0name = N'WEB', @level1type = N'TABLE', @level1name = N'TransporterStatus', @level2type = N'COLUMN', @level2name = N'TransporterStatus_Category';

