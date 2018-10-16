CREATE TABLE [WEB_ARC].[Transporter_Manual] (
    [Transporter_Code]          NVARCHAR (10)  NOT NULL,
    [Transporter_New]           NVARCHAR (10)  NOT NULL,
    [Transporter_Name]          NVARCHAR (100) NULL,
    [Transporter_Ship_Via_Code] NVARCHAR (4)   NOT NULL,
    [Eff_Date]                  DATE           NOT NULL,
    [End_Date]                  DATE           NULL,
    [ActInd]                    CHAR (1)       NULL,
    [IsDeleted]                 CHAR (1)       NULL,
    [BatchID]                   BIGINT         NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_Transporter_Manual] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [Transporter_Code] ASC, [Transporter_New] ASC, [Transporter_Ship_Via_Code] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

