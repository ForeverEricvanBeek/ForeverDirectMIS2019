CREATE TABLE [WEB].[TransporterManual] (
    [TransporterManual_Code]        NVARCHAR (10)  NOT NULL,
    [TransporterManual_New]         NVARCHAR (10)  NOT NULL,
    [TransporterManual_Name]        NVARCHAR (100) NULL,
    [TransporterManual_ShipViaCode] NVARCHAR (4)   NOT NULL,
    [Eff_Date]                      DATE           NOT NULL,
    [End_Date]                      DATE           NULL,
    [ActInd]                        CHAR (1)       NULL,
    [IsDeleted]                     CHAR (1)       NULL,
    [BatchID]                       BIGINT         NULL,
    [ProcessLogID]                  BIGINT         NULL,
    CONSTRAINT [PK_Transporter_Manual] PRIMARY KEY CLUSTERED ([TransporterManual_Code] ASC, [TransporterManual_New] ASC, [TransporterManual_ShipViaCode] ASC, [Eff_Date] ASC) ON [DWH_WEB]
) ON [DWH_WEB];



