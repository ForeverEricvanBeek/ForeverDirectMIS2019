CREATE TABLE [IFS_ARC].[FND_USER] (
    [IDENTITY]     NVARCHAR (30)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (2000) NULL,
    [ORACLE_USER]  NVARCHAR (30)   NULL,
    [WEB_USER]     NVARCHAR (2000) NULL,
    [ACTIVE]       NVARCHAR (5)    NULL,
    [VALID_FROM]   DATETIME2 (7)   NULL,
    [VALID_TO]     DATETIME2 (7)   NULL,
    [TEXT_ID$]     NVARCHAR (50)   NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_FND_USER] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [IDENTITY] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



