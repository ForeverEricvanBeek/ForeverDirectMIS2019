﻿CREATE TABLE [MANH].[TRAN_LOG] (
    [TRAN_LOG_ID]                INT             NOT NULL,
    [SEQUENCE_NUMBER]            INT             NULL,
    [ORIGIN_ID]                  NVARCHAR (256)  NULL,
    [ORIGIN_TYPE]                NVARCHAR (3)    NULL,
    [ORIGIN_FORMAT]              NVARCHAR (12)   NULL,
    [BATCH_ID]                   NVARCHAR (18)   NULL,
    [REFERENCE_ID]               NVARCHAR (50)   NULL,
    [MSG_TYPE]                   NVARCHAR (30)   NULL,
    [ORIG_COMPANY]               NVARCHAR (100)  NULL,
    [DEST_COMPANY]               NVARCHAR (100)  NULL,
    [DEST_ID]                    NVARCHAR (256)  NULL,
    [DEST_TYPE]                  NVARCHAR (3)    NULL,
    [DEST_FORMAT]                NVARCHAR (12)   NULL,
    [RESULT_CODE]                INT             NOT NULL,
    [USER_ID]                    NVARCHAR (16)   NULL,
    [ORIG_PROCESS_DATE]          DATETIME2 (7)   NULL,
    [DEST_PROCESS_DATE]          DATETIME2 (7)   NULL,
    [LAST_UPDATED_DTTM]          DATETIME2 (7)   NOT NULL,
    [DIRECTION]                  NVARCHAR (1)    NULL,
    [OBJECT_ID]                  NVARCHAR (50)   NULL,
    [OBJECT_TYPE]                NVARCHAR (4)    NULL,
    [ROUTER_ID]                  INT             NULL,
    [ENFORCE_SEQUENCE]           INT             NULL,
    [USE_BATCH_ID]               INT             NULL,
    [SEQUENCING_CLAUSE]          NVARCHAR (256)  NULL,
    [ERROR_DETAILS]              NVARCHAR (4000) NULL,
    [BAK_ID]                     NVARCHAR (100)  NULL,
    [MESSAGE_ID]                 INT             NULL,
    [CREATED_DTTM]               DATETIME2 (7)   NOT NULL,
    [MSG_EXCHANGE_PATTERN]       NVARCHAR (25)   NULL,
    [ADDL_CRITERIA_EXPR]         NVARCHAR (1000) NULL,
    [ADDL_CRITERIA_VALUE]        NVARCHAR (80)   NULL,
    [TRAN_LOG_LEVEL]             NVARCHAR (30)   NOT NULL,
    [IS_MSG_STORED]              INT             NOT NULL,
    [PROCESSED_AT]               NVARCHAR (80)   NULL,
    [HAS_ERRORS]                 INT             NOT NULL,
    [RETRY_COUNT]                INT             NOT NULL,
    [ACTION_TYPE]                NVARCHAR (16)   NULL,
    [MSG_LOCALE]                 NVARCHAR (128)  NULL,
    [VERSION]                    NVARCHAR (50)   NULL,
    [INTERNAL_REFERENCE_ID]      NVARCHAR (40)   NULL,
    [INTERNAL_DATE_TIME_STAMP]   DATETIME2 (7)   NULL,
    [EXTERNAL_REFERENCE_ID_TYPE] NVARCHAR (16)   NULL,
    [EXTERNAL_REFERENCE_ID]      NVARCHAR (40)   NULL,
    [EXTERNAL_DATE_TIME_STAMP]   DATETIME2 (7)   NULL,
    [BATCH_SIZE]                 INT             NULL,
    [IS_RESPONSE_SENT]           INT             NULL,
    [CHANNEL_ID]                 INT             NULL,
    [IS_INDEXED]                 INT             NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_MANH_TRAN_LOG] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TRAN_LOG_ID] ASC)
);

