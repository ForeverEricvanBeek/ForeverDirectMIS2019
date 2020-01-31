﻿CREATE TABLE [WEB].[FormShipmentCall] (
    [FormShipmentCall_ID]                                    BIGINT         NOT NULL,
    [FormShipmentCall_Country]                               NVARCHAR (256) NULL,
    [FormShipmentCall_Manhattan]                             NVARCHAR (256) NULL,
    [FormShipmentCall_CSNList]                               NVARCHAR (256) NULL,
    [FormShipmentCall_Contact]                               NVARCHAR (256) NULL,
    [FormShipmentCall_CallDate]                              DATE           NULL,
    [FormShipmentCall_ETAStartDateTime]                      DATETIME       NULL,
    [FormShipmentCall_ETAStopDateTime]                       DATETIME       NULL,
    [FormShipmentCall_ATADate]                               DATE           NULL,
    [FormShipmentCall_QuestionShipmentOnTime_Answer]         INT            NULL,
    [FormShipmentCall_QuestionShipmentOnTime_Comment]        NVARCHAR (MAX) NULL,
    [FormShipmentCall_QuestionShipmentComplete_Answer]       INT            NULL,
    [FormShipmentCall_QuestionShipmentComplete_Comment]      NVARCHAR (MAX) NULL,
    [FormShipmentCall_QuestionDeliveryTidy_Answer]           INT            NULL,
    [FormShipmentCall_QuestionDeliveryTidy_Comment]          NVARCHAR (MAX) NULL,
    [FormShipmentCall_QuestionDocumentationOnTime_Answer]    INT            NULL,
    [FormShipmentCall_QuestionDocumentationOnTime_Comment]   NVARCHAR (MAX) NULL,
    [FormShipmentCall_QuestionDocumentationComplete_Answer]  INT            NULL,
    [FormShipmentCall_QuestionDocumentationComplete_Comment] NVARCHAR (MAX) NULL,
    [FormShipmentCall_QuestionOtherIssues_Answer]            INT            NULL,
    [FormShipmentCall_QuestionOtherIssues_Comment]           NVARCHAR (MAX) NULL,
    [FormShipmentCall_Status]                                NVARCHAR (256) NULL,
    [FormShipmentCall_UpdatedBy]                             NVARCHAR (256) NULL,
    [FormShipmentCall_UpdatedDate]                           DATETIME2 (7)  NULL,
    [FormShipmentCall_CreatedBy]                             NVARCHAR (256) NULL,
    [FormShipmentCall_CreatedDate]                           DATETIME2 (7)  NULL,
    [BatchID]                                                BIGINT         NULL,
    [ProcessLogID]                                           BIGINT         NULL,
    CONSTRAINT [PK_web.FormShipmentCall] PRIMARY KEY CLUSTERED ([FormShipmentCall_ID] ASC)
);

