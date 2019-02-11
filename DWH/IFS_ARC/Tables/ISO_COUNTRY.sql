CREATE TABLE [IFS_ARC].[ISO_COUNTRY] (
    [COUNTRY_CODE]   NVARCHAR (2)    NOT NULL,
    [COUNTRY_CODE3]  NVARCHAR (3)    NULL,
    [COUNTRY_ID]     INT             NULL,
    [DESCRIPTION]    NVARCHAR (4000) NULL,
    [FULL_NAME]      NVARCHAR (4000) NULL,
    [EU_MEMBER]      NVARCHAR (4000) NULL,
    [EU_MEMBER_DB]   NVARCHAR (1)    NULL,
    [SALES_TAX]      NVARCHAR (1)    NULL,
    [DEFAULT_LOCALE] NVARCHAR (8)    NULL,
    [OBJID]          NVARCHAR (4000) NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [Eff_Date]       DATE            NOT NULL,
    [End_Date]       DATE            NULL,
    [ActInd]         CHAR (1)        NULL,
    [IsDeleted]      CHAR (1)        NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    CONSTRAINT [PK_ISO_COUNTRY] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





