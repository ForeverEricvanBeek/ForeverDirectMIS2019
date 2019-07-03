CREATE TABLE [MFV].[QualityCheck_Reasons] (
    [ID]                    INT           NOT NULL,
    [QualityCheck_ID]       INT           NOT NULL,
    [Reason]                VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_QualityCheck_Reasons] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

