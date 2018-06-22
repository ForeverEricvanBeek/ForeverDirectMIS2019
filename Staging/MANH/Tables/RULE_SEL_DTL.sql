CREATE TABLE [MANH].[RULE_SEL_DTL] (
    [RULE_ID]           INT            NOT NULL,
    [SEL_SEQ_NBR]       INT            NOT NULL,
    [OPEN_PARAN]        NVARCHAR (1)   NULL,
    [TBL_NAME]          NVARCHAR (30)  NULL,
    [COLM_NAME]         NVARCHAR (65)  NULL,
    [OPER_CODE]         NVARCHAR (20)  NULL,
    [RULE_CMPAR_VALUE]  NVARCHAR (250) NULL,
    [AND_OR_OR]         NVARCHAR (1)   NULL,
    [CLOSE_PARAN]       NVARCHAR (1)   NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)  NULL,
    [USER_ID]           NVARCHAR (15)  NULL,
    [RULE_SEL_DTL_ID]   INT            NOT NULL,
    [RULE_HDR_ID]       INT            NULL,
    [WM_VERSION_ID]     INT            NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_MANH_RULE_SEL_DTL] PRIMARY KEY CLUSTERED ([RULE_SEL_DTL_ID] ASC)
);

