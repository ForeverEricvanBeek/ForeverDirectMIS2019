CREATE TABLE [WEB].[FormIncomingFeedbackFiles] (
    [FormIncomingFeedbackFiles_ID]                      BIGINT         NOT NULL,
    [FormIncomingFeedbackFiles_FormIncomingFeedback_ID] BIGINT         NOT NULL,
    [FormIncomingFeedbackFiles_FileLink]                NVARCHAR (MAX) NULL,
    [FormIncomingFeedbackFiles_UpdatedBy]               NVARCHAR (256) NULL,
    [FormIncomingFeedbackFiles_UpdatedDate]             DATETIME2 (7)  NULL,
    [FormIncomingFeedbackFiles_CreatedBy]               NVARCHAR (256) NULL,
    [FormIncomingFeedbackFiles_CreatedDate]             DATETIME2 (7)  NULL,
    [BatchID]                                           BIGINT         NULL,
    [ProcessLogID]                                      BIGINT         NULL,
    CONSTRAINT [PK_web.FormIncomingFeedbackFiles] PRIMARY KEY CLUSTERED ([FormIncomingFeedbackFiles_ID] ASC)
);

