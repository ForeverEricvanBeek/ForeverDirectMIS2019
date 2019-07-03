CREATE TABLE [IFS_ARC].[ACCOUNTING_GROUP] (
    [ACCOUNTING_GROUP] NVARCHAR (5)    NOT NULL,
    [DESCRIPTION]      NVARCHAR (35)   NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_ACCOUNTING_GROUP] PRIMARY KEY CLUSTERED ([ACCOUNTING_GROUP] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

