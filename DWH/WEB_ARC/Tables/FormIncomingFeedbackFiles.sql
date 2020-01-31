CREATE TABLE [WEB_ARC].[FormIncomingFeedbackFiles] (
    [FormIncomingFeedbackFiles_ID]                      BIGINT         NOT NULL,
    [FormIncomingFeedbackFiles_FormIncomingFeedback_ID] BIGINT         NOT NULL,
    [FormIncomingFeedbackFiles_FileLink]                NVARCHAR (MAX) NULL,
    [FormIncomingFeedbackFiles_UpdatedBy]               NVARCHAR (256) NULL,
    [FormIncomingFeedbackFiles_UpdatedDate]             DATETIME2 (7)  NULL,
    [FormIncomingFeedbackFiles_CreatedBy]               NVARCHAR (256) NULL,
    [FormIncomingFeedbackFiles_CreatedDate]             DATETIME2 (7)  NULL,
    [Eff_Date]                                          DATE           NOT NULL,
    [End_Date]                                          DATE           NULL,
    [ActInd]                                            CHAR (1)       NULL,
    [IsDeleted]                                         CHAR (1)       NULL,
    [BatchID]                                           BIGINT         NULL,
    [ProcessLogID]                                      BIGINT         NULL,
    CONSTRAINT [PK_web.FormIncomingFeedbackFiles] PRIMARY KEY CLUSTERED ([FormIncomingFeedbackFiles_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC] TEXTIMAGE_ON [DWH_WEB_ARC];

