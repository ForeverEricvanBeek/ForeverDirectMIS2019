CREATE TABLE [IFS_ARC].[USER_FINANCE] (
    [COMPANY]         NVARCHAR (20)   NOT NULL,
    [USERID]          NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]     NVARCHAR (4000) NULL,
    [DEFAULT_COMPANY] NVARCHAR (20)   NULL,
    [OBJID]           NVARCHAR (4000) NULL,
    [OBJVERSION]      NVARCHAR (2000) NULL,
    [Eff_Date]        DATE            NOT NULL,
    [End_Date]        DATE            NULL,
    [ActInd]          CHAR (1)        NULL,
    [IsDeleted]       CHAR (1)        NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_USER_FINANCE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [Eff_Date] ASC, [USERID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



