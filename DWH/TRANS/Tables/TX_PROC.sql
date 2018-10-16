CREATE TABLE [TRANS].[TX_PROC] (
    [TX_PROC_ID]      INT            NOT NULL,
    [TX_PROC_CODE]    NVARCHAR (20)  NULL,
    [TX_PROC_NAME]    NVARCHAR (100) NULL,
    [TX_PROC_PATH]    NVARCHAR (260) NULL,
    [TX_PROC_TYPE]    NVARCHAR (20)  NULL,
    [TX_PROC_CREATED] DATETIME2 (7)  NULL,
    [TX_PROC_ENABLED] BIT            NULL,
    [TX_PROC_SORT]    SMALLINT       NULL,
    [TX_PROC_LIVE]    BIT            NULL,
    [Eff_Date]        DATE           NOT NULL,
    [End_Date]        DATE           NULL,
    [ActInd]          CHAR (1)       NULL,
    [IsDeleted]       CHAR (1)       NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_TX_PROC] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TX_PROC_ID] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



