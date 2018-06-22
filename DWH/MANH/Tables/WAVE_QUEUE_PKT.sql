CREATE TABLE [MANH].[WAVE_QUEUE_PKT] (
    [SHIP_WAVE_PARM_ID] INT           NOT NULL,
    [SEQ_NBR]           INT           NOT NULL,
    [PKT_CTRL_NBR]      NVARCHAR (50) NOT NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7) NULL,
    [MOD_DATE_TIME]     DATETIME2 (7) NULL,
    [USER_ID]           NVARCHAR (15) NULL,
    [WAVE_QUEUE_PKT_ID] INT           NOT NULL,
    [WAVE_QUEUE_ID]     INT           NULL,
    [WM_VERSION_ID]     INT           NOT NULL,
    [PKT_HDR_ID]        INT           NOT NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_WAVE_QUEUE_PKT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [WAVE_QUEUE_PKT_ID] ASC)
);

