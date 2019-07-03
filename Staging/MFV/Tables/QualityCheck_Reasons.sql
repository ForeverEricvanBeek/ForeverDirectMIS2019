CREATE TABLE [MFV].[QualityCheck_Reasons] (
    [ID]                    INT           NOT NULL,
    [QualityCheck_ID]       INT           NOT NULL,
    [Reason]                VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_QualityCheck_Reasons] PRIMARY KEY CLUSTERED ([ID] ASC)
);

