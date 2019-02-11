CREATE TABLE [MANH_ARC].[SHIP_WAVE_PARM] (
    [SHIP_WAVE_PARM_ID]      INT            NOT NULL,
    [REC_TYPE]               NVARCHAR (1)   NULL,
    [WHSE]                   NVARCHAR (3)   NULL,
    [SHIP_WAVE_NBR]          NVARCHAR (12)  NULL,
    [WAVE_DESC]              NVARCHAR (40)  NULL,
    [WAVE_PARM_ID]           INT            NULL,
    [PERF_PICKNG_WAVE]       NVARCHAR (1)   NULL,
    [PICK_WAVE_NBR]          NVARCHAR (12)  NULL,
    [PERF_RTE]               NVARCHAR (1)   NULL,
    [PERF_PKT_CONSOL]        NVARCHAR (1)   NULL,
    [PERF_PULLDOWN_FROM_PNH] NVARCHAR (1)   NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]          DATETIME2 (7)  NULL,
    [USER_ID]                NVARCHAR (15)  NULL,
    [STAT_CODE]              INT            NOT NULL,
    [PNH_PARM_ID]            INT            NULL,
    [RTE_WAVE_PARM_ID]       INT            NOT NULL,
    [WM_VERSION_ID]          INT            NOT NULL,
    [SPL_INSTR_CODE_1]       NVARCHAR (400) NULL,
    [SPL_INSTR_CODE_2]       NVARCHAR (400) NULL,
    [SPL_INSTR_CODE_3]       NVARCHAR (400) NULL,
    [SPL_INSTR_CODE_4]       NVARCHAR (400) NULL,
    [SPL_INSTR_CODE_5]       NVARCHAR (400) NULL,
    [RULE_SET_ID]            INT            NULL,
    [RTE_WAVE_NBR]           NVARCHAR (12)  NULL,
    [CREATED_DTTM]           DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM]      DATETIME2 (7)  NULL,
    [Eff_Date]               DATE           NOT NULL,
    [End_Date]               DATE           NULL,
    [ActInd]                 CHAR (1)       NULL,
    [IsDeleted]              CHAR (1)       NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_MANH_SHIP_WAVE_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIP_WAVE_PARM_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





