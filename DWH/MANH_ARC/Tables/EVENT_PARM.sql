CREATE TABLE [MANH_ARC].[EVENT_PARM] (
    [EVENT_PARM_ID]     INT           NOT NULL,
    [WHSE]              NVARCHAR (3)  NULL,
    [REC_TYPE]          NVARCHAR (3)  NULL,
    [EVENT_TYPE]        NVARCHAR (3)  NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7) NULL,
    [MOD_DATE_TIME]     DATETIME2 (7) NULL,
    [USER_ID]           NVARCHAR (15) NULL,
    [EVENT_PARM_DESC]   NVARCHAR (40) NULL,
    [WM_VERSION_ID]     INT           NOT NULL,
    [CREATED_DTTM]      DATE          NOT NULL,
    [LAST_UPDATED_DTTM] DATE          NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_VENT_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [EVENT_PARM_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





