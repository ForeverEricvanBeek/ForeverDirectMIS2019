CREATE TABLE [IFS_ARC].[FND_ROLE] (
    [ROLE]             NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]      NVARCHAR (200)  NULL,
    [CREATED]          DATETIME2 (7)   NULL,
    [FND_ROLE_TYPE]    NVARCHAR (4000) NULL,
    [FND_ROLE_TYPE_DB] NVARCHAR (20)   NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_FND_ROLE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ROLE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



