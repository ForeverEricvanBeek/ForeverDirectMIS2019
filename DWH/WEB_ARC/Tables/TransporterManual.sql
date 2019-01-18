CREATE TABLE [WEB_ARC].[TransporterManual] (
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
    CONSTRAINT [PK_Transporter_Manual] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TransporterManual_Code] ASC, [TransporterManual_New] ASC, [TransporterManual_ShipViaCode] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

