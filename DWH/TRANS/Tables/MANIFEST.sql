CREATE TABLE [TRANS].[MANIFEST] (
    [INTERFACE_ID] BIGINT         NOT NULL,
    [EDI_ID]       BIGINT         NULL,
    [DSN_ID]       INT            NULL,
    [FORWARDER_ID] INT            NULL,
    [PATH]         VARCHAR (260)  NULL,
    [PERIOD_FROM]  DATETIME       NULL,
    [PERIOD_TO]    DATETIME       NULL,
    [DESCRIPTION]  VARCHAR (200)  NULL,
    [COMMUNICATED] VARCHAR (200)  NULL,
    [CREATED]      DATETIME2 (7)  NULL,
    [CREATED_BY]   NVARCHAR (100) NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_MANIFEST] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





