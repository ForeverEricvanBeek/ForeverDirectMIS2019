CREATE TABLE [IFS].[USER_ALLOWED_SITE] (
    [USERID]            NVARCHAR (30)   NOT NULL,
    [CONTRACT]          NVARCHAR (5)    NOT NULL,
    [USER_SITE_TYPE]    NVARCHAR (4000) NULL,
    [USER_SITE_TYPE_DB] NVARCHAR (200)  NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_USER_ALLOWED_SITE] PRIMARY KEY CLUSTERED ([USERID] ASC, [CONTRACT] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





