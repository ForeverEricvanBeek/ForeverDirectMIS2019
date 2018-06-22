CREATE TABLE [MANH].[WAVE_QUEUE_WORK_ORD] (
    [SHIP_WAVE_PARM_ID]      INT           NOT NULL,
    [SEQ_NBR]                INT           NOT NULL,
    [WORK_ORD_NBR]           NVARCHAR (12) NOT NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7) NULL,
    [MOD_DATE_TIME]          DATETIME2 (7) NULL,
    [USER_ID]                NVARCHAR (15) NULL,
    [WAVE_QUEUE_WORK_ORD_ID] INT           NOT NULL,
    [WAVE_QUEUE_ID]          INT           NULL,
    [WM_VERSION_ID]          INT           NOT NULL,
    [WORK_ORD_HDR_ID]        INT           NOT NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_MANH_WAVE_QUEUE_WORK_ORD] PRIMARY KEY CLUSTERED ([WAVE_QUEUE_WORK_ORD_ID] ASC)
);

