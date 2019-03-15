CREATE TABLE [MANH].[CL_MESSAGE] (
    [VERSION_ID]        INT            NOT NULL,
    [MSG_ID]            BIGINT         NOT NULL,
    [EVENT_ID]          BIGINT         NOT NULL,
    [PRTY]              BIGINT         NULL,
    [ENCODING]          INT            NOT NULL,
    [WHEN_CREATED]      DATETIME2 (7)  NOT NULL,
    [SOURCE_ID]         NVARCHAR (64)  NULL,
    [SOURCE_URI]        NVARCHAR (256) NULL,
    [DATA]              NVARCHAR (MAX) NOT NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_MANH_CL_MESSAGE] PRIMARY KEY CLUSTERED ([MSG_ID] ASC)
);



