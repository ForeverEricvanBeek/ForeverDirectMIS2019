CREATE TABLE [TRANS].[CONSIGNMENT_RANGE] (
    [CR_ID]        INT            NOT NULL,
    [FORWARDER_ID] INT            NOT NULL,
    [DSN_ID]       INT            NULL,
    [PROJECT_ID]   INT            NULL,
    [RANGE_FROM]   VARCHAR (30)   NULL,
    [RANGE_TO]     VARCHAR (30)   NULL,
    [CURRENT_NR]   VARCHAR (30)   NULL,
    [ENABLED]      BIT            NULL,
    [FINISHED]     BIT            NULL,
    [VALID_BEGIN]  DATETIME       NULL,
    [VALID_END]    DATETIME       NULL,
    [REMARKS]      VARCHAR (200)  NULL,
    [CREATED_BY]   NVARCHAR (100) NULL,
    [CREATED]      DATETIME2 (7)  DEFAULT (getdate()) NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_CONSIGNMENT_RANGE] PRIMARY KEY CLUSTERED ([CR_ID] ASC)
);

