﻿CREATE TABLE [WEB].[FormIncomingFeedback] (
    [FormIncomingFeedback_ID]              BIGINT         NOT NULL,
    [FormIncomingFeedback_Country]         NVARCHAR (50)  NULL,
    [FormIncomingFeedback_FeedbackDate]    DATE           NULL,
    [FormIncomingFeedback_FeedbackNature]  NVARCHAR (20)  NULL,
    [FormIncomingFeedback_FeedbackStatus]  NVARCHAR (10)  NULL,
    [FormIncomingFeedback_ContactPerson]   NVARCHAR (256) NULL,
    [FormIncomingFeedback_Channel]         NVARCHAR (100) NULL,
    [FormIncomingFeedback_Category]        NVARCHAR (100) NULL,
    [FormIncomingFeedback_FeedbackReason]  NVARCHAR (MAX) NULL,
    [FormIncomingFeedback_FollowUpNeeded]  BIT            NULL,
    [FormIncomingFeedback_FollowUp]        NVARCHAR (MAX) NULL,
    [FormIncomingFeedback_FollowUpEndDate] DATE           NULL,
    [FormIncomingFeedback_FollowUpNoDate]  BIT            NULL,
    [FormIncomingFeedback_Department]      NVARCHAR (100) NULL,
    [FormIncomingFeedback_OtherIssues]     NVARCHAR (MAX) NULL,
    [FormIncomingFeedback_Journey]         NVARCHAR (100) NULL,
    [FormIncomingFeedback_Phase]           NVARCHAR (100) NULL,
    [FormIncomingFeedback_Touchpoint]      NVARCHAR (100) NULL,
    [FormIncomingFeedback_UpdatedBy]       NVARCHAR (256) NULL,
    [FormIncomingFeedback_UpdatedDate]     DATETIME2 (7)  NULL,
    [FormIncomingFeedback_CreatedBy]       NVARCHAR (256) NULL,
    [FormIncomingFeedback_CreatedDate]     DATETIME2 (7)  NULL,
    [BatchID]                              BIGINT         NULL,
    [ProcessLogID]                         BIGINT         NULL,
    CONSTRAINT [PK_FormIncomingFeedback] PRIMARY KEY CLUSTERED ([FormIncomingFeedback_ID] ASC)
);

