CREATE TABLE [MANH].[LRF_EVENT_HISTORY] (
    [LRF_EVENT_ID]      INT           NOT NULL,
    [LRF_EVENT_NAME]    NVARCHAR (50) NULL,
    [EVENT_START_DTTM]  DATETIME2 (7) NULL,
    [FREQ_TYPE]         INT           NULL,
    [FREQ_VAL_1]        INT           NULL,
    [FREQ_VAL_2]        INT           NULL,
    [EVENT_ID]          INT           NULL,
    [SCHEDULED_TIME]    NVARCHAR (6)  NULL,
    [CREATED_BY]        NVARCHAR (60) NULL,
    [MODIFIED_BY]       NVARCHAR (60) NULL,
    [CREATED_DTTM]      DATETIME2 (7) NULL,
    [MODIFIED_DTTM]     DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_LRF_EVENT_HISTORY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LRF_EVENT_ID] ASC)
);

