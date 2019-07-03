CREATE TABLE [IFS_ARC].[ISO_UNIT_DEF] (
    [UNIT_CODE]      NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]    NVARCHAR (4000) NULL,
    [DB_DESCRIPTION] NVARCHAR (2000) NULL,
    [PRESENT_FACTOR] NVARCHAR (4000) NULL,
    [BASE_UNIT]      NVARCHAR (30)   NULL,
    [MULTI_FACTOR]   BIGINT          NULL,
    [DIV_FACTOR]     INT             NULL,
    [TEN_POWER]      INT             NULL,
    [USER_DEFINED]   NVARCHAR (5)    NULL,
    [USED_IN_APPL]   NVARCHAR (5)    NULL,
    [UNIT_TYPE]      NVARCHAR (4000) NULL,
    [UNIT_TYPE_DB]   NVARCHAR (10)   NULL,
    [OBJID]          NVARCHAR (4000) NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [Eff_Date]       DATE            NOT NULL,
    [End_Date]       DATE            NULL,
    [ActInd]         CHAR (1)        NULL,
    [IsDeleted]      CHAR (1)        NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    CONSTRAINT [PK_ISO_UNIT_DEF] PRIMARY KEY CLUSTERED ([UNIT_CODE] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

