CREATE TABLE [MANH].[LOCN_GRP] (
    [GRP_TYPE]         SMALLINT      NOT NULL,
    [LOCN_ID]          NVARCHAR (10) NOT NULL,
    [GRP_ATTR]         NVARCHAR (24) NULL,
    [CREATE_DATE_TIME] DATETIME2 (7) NULL,
    [MOD_DATE_TIME]    DATETIME2 (7) NULL,
    [USER_ID]          NVARCHAR (15) NULL,
    [LOCN_GRP_ID]      INT           NOT NULL,
    [LOCN_HDR_ID]      INT           NULL,
    [WM_VERSION_ID]    INT           NOT NULL,
    [Eff_Date]         DATE          NOT NULL,
    [End_Date]         DATE          NULL,
    [ActInd]           CHAR (1)      NULL,
    [IsDeleted]        CHAR (1)      NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_MANH_LOCN_GRP] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LOCN_GRP_ID] ASC)
);

