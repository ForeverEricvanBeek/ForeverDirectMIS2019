CREATE TABLE [MANH].[LPN_NOTES] (
    [LPN_ID]            INT            NOT NULL,
    [COMMENT_SEQ_NBR]   INT            NOT NULL,
    [COMMENT_TYPE]      NVARCHAR (3)   NULL,
    [COMMENT_CODE]      NVARCHAR (3)   NULL,
    [COMMENTS]          NVARCHAR (500) NULL,
    [HIBERNATE_VERSION] INT            NULL,
    [IS_INTERNAL]       TINYINT        NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_LPN_NOTES] PRIMARY KEY CLUSTERED ([LPN_ID] ASC, [COMMENT_SEQ_NBR] ASC)
);

