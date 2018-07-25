CREATE TABLE [IFS].[DOCUMENT_TEXT] (
    [OUTPUT_TYPE]  NVARCHAR (10)   NOT NULL,
    [NOTE_ID]      INT             NOT NULL,
    [NOTE_TEXT]    NVARCHAR (2000) NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL
);

