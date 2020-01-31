CREATE TABLE [RT].[PIX_Messages] (
    [LPN]             NVARCHAR (50)   NULL,
    [Item]            NVARCHAR (100)  NULL,
    [Batch]           NVARCHAR (15)   NULL,
    [Location]        NVARCHAR (75)   NULL,
    [Lock_Code]       NVARCHAR (75)   NULL,
    [Reason_Code]     NVARCHAR (3)    NULL,
    [INVN_ADJMT_QTY]  NUMERIC (13, 5) NULL,
    [INVN_ADJMT_TYPE] NVARCHAR (1)    NULL,
    [WT_ADJMT_QTY]    DECIMAL (13, 5) NULL,
    [WT_ADJMT_TYPE]   NVARCHAR (1)    NULL,
    [Create_Date]     DATETIME2 (7)   NULL,
    [Datum]           NVARCHAR (8)    NULL,
    [USER_ID]         NVARCHAR (15)   NULL,
    [TRAN_TYPE]       NVARCHAR (3)    NULL,
    [TRAN_CODE]       NVARCHAR (3)    NULL,
    [ACTN_CODE]       NVARCHAR (3)    NULL,
    [Request_ID]      BIGINT          NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL
);

