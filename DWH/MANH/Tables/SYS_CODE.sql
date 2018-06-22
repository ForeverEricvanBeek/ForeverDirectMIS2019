CREATE TABLE [MANH].[SYS_CODE] (
    [REC_TYPE]         NVARCHAR (1)   NOT NULL,
    [CODE_TYPE]        NVARCHAR (3)   NOT NULL,
    [CODE_ID]          NVARCHAR (15)  NOT NULL,
    [CODE_DESC]        NVARCHAR (100) NULL,
    [SHORT_DESC]       NVARCHAR (10)  NULL,
    [MISC_FLAGS]       NVARCHAR (100) NULL,
    [CREATE_DATE_TIME] DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]    DATETIME2 (7)  NULL,
    [USER_ID]          NVARCHAR (15)  NULL,
    [WM_VERSION_ID]    INT            NOT NULL,
    [SYS_CODE_ID]      INT            NOT NULL,
    [SYS_CODE_TYPE_ID] INT            NOT NULL,
    [Eff_Date]         DATE           NOT NULL,
    [End_Date]         DATE           NULL,
    [ActInd]           CHAR (1)       NULL,
    [IsDeleted]        CHAR (1)       NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_MANH_SYS_CODE] PRIMARY KEY CLUSTERED ([CODE_ID] ASC, [CODE_TYPE] ASC, [Eff_Date] ASC, [REC_TYPE] ASC)
);

