CREATE TABLE [MANH].[WORK_ORD_CMNT] (
    [WORK_ORD_NBR]         NVARCHAR (12)  NOT NULL,
    [CMNT_SEQ]             BIGINT         NOT NULL,
    [CMNT_CODE]            NVARCHAR (3)   NULL,
    [CMNT]                 NVARCHAR (255) NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]        DATETIME2 (7)  NULL,
    [USER_ID]              NVARCHAR (15)  NULL,
    [WORK_ORD_CMNT_ID]     BIGINT         NOT NULL,
    [WORK_ORD_HDR_ID]      BIGINT         NULL,
    [WM_VERSION_ID]        INT            NOT NULL,
    [HAS_IMPORT_ERROR]     INT            NOT NULL,
    [HAS_SOFT_CHECK_ERROR] INT            NOT NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_MANH_WORK_ORD_CMNT] PRIMARY KEY CLUSTERED ([WORK_ORD_CMNT_ID] ASC)
);

