CREATE TABLE [MANH].[TASK_PRT_SORT_DTL] (
    [RULE_ID]              INT           NOT NULL,
    [SORT_SEQ_NBR]         INT           NOT NULL,
    [TBL_NAME]             NVARCHAR (30) NULL,
    [COLM_NAME]            NVARCHAR (65) NULL,
    [SORT_SEQ]             NVARCHAR (1)  NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7) NULL,
    [MOD_DATE_TIME]        DATETIME2 (7) NULL,
    [USER_ID]              NVARCHAR (15) NULL,
    [SORT_SEQ_BREAK]       NVARCHAR (1)  NULL,
    [TASK_PRT_SORT_DTL_ID] INT           NOT NULL,
    [RULE_HDR_ID]          INT           NULL,
    [WM_VERSION_ID]        INT           NOT NULL,
    [CREATED_DTTM]         DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]    DATETIME2 (7) NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_TASK_PRT_SORT_DTL] PRIMARY KEY CLUSTERED ([TASK_PRT_SORT_DTL_ID] ASC)
);

