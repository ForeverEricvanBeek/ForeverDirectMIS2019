CREATE TABLE [FORECAST].[ComboPack] (
    [OFFICE]       NVARCHAR (10)  NOT NULL,
    [CUSTOMER]     NVARCHAR (15)  NULL,
    [COMBO_NAME]   NVARCHAR (150) NOT NULL,
    [COMBO_STYLE]  NVARCHAR (10)  NOT NULL,
    [COMBO_UPDATE] NVARCHAR (50)  NOT NULL,
    [COMBO_ITEMS]  NVARCHAR (500) NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_ComboPack] PRIMARY KEY CLUSTERED ([COMBO_NAME] ASC, [COMBO_STYLE] ASC, [COMBO_UPDATE] ASC, [Eff_Date] ASC, [OFFICE] ASC) ON [DWH_FORECAST]
) ON [DWH_FORECAST];



