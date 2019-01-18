CREATE TABLE [TRANS_ARC].[CONSIGNMENT_RANGE] (
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
    [CREATED]      DATETIME2 (7)  NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_CONSIGNMENT_RANGE] PRIMARY KEY CLUSTERED ([CR_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



