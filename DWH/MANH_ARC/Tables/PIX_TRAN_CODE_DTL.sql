CREATE TABLE [MANH_ARC].[PIX_TRAN_CODE_DTL] (
    [PIX_TRAN_CODE_ID]     INT           NOT NULL,
    [PIX_TRAN_CODE_SEQ]    INT           NOT NULL,
    [REF_CODE_ID]          NVARCHAR (3)  NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7) NULL,
    [MOD_DATE_TIME]        DATETIME2 (7) NULL,
    [USER_ID]              NVARCHAR (15) NULL,
    [PIX_TRAN_CODE_DTL_ID] INT           NOT NULL,
    [WM_VERSION_ID]        INT           NOT NULL,
    [CREATED_DTTM]         DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]    DATETIME2 (7) NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_PIX_TRAN_CODE_DTL] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PIX_TRAN_CODE_DTL_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



