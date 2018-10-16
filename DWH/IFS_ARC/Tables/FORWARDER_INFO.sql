CREATE TABLE [IFS_ARC].[FORWARDER_INFO] (
    [FORWARDER_ID]        NVARCHAR (20)   NOT NULL,
    [NAME]                NVARCHAR (100)  NULL,
    [CREATION_DATE]       DATETIME2 (7)   NULL,
    [ASSOCIATION_NO]      NVARCHAR (50)   NULL,
    [PARTY]               NVARCHAR (20)   NULL,
    [DEFAULT_DOMAIN]      NVARCHAR (5)    NULL,
    [DEFAULT_LANGUAGE]    NVARCHAR (4000) NULL,
    [DEFAULT_LANGUAGE_DB] NVARCHAR (2)    NULL,
    [COUNTRY]             NVARCHAR (4000) NULL,
    [COUNTRY_DB]          NVARCHAR (2)    NULL,
    [PARTY_TYPE]          NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]       NVARCHAR (20)   NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (2000) NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_FORWARDER_INFO] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FORWARDER_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

