CREATE TABLE [MANH].[PUTWY_TYPE_PRTY] (
    [WHSE]                          NVARCHAR (3)  NOT NULL,
    [PUTWY_TYPE_DETERM_METHOD_PRTY] INT           NOT NULL,
    [PUTWY_TYPE_DETERM_METHOD]      NVARCHAR (1)  NOT NULL,
    [EVENT_PARM_ID]                 INT           NULL,
    [CREATE_DATE_TIME]              DATETIME2 (7) NULL,
    [MOD_DATE_TIME]                 DATETIME2 (7) NULL,
    [USER_ID]                       NVARCHAR (15) NULL,
    [WM_VERSION_ID]                 INT           NOT NULL,
    [PUTWY_TYPE_PRTY_ID]            INT           NOT NULL,
    [CREATED_DTTM]                  DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]             DATETIME2 (7) NULL,
    [Eff_Date]                      DATE          NOT NULL,
    [End_Date]                      DATE          NULL,
    [ActInd]                        CHAR (1)      NULL,
    [IsDeleted]                     CHAR (1)      NULL,
    [BatchID]                       BIGINT        NULL,
    [ProcessLogID]                  BIGINT        NULL,
    CONSTRAINT [PK_MANH_PUTWY_TYPE_PRTY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PUTWY_TYPE_PRTY_ID] ASC)
);

