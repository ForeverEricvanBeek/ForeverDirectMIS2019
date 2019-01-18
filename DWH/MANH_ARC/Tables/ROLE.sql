CREATE TABLE [MANH_ARC].[ROLE] (
    [ROLE_ID]                     INT            NOT NULL,
    [COMPANY_ID]                  INT            NULL,
    [ROLE_NAME]                   NVARCHAR (100) NULL,
    [IS_ROLE_PRIVATE]             INT            NULL,
    [IS_ACTIVE]                   INT            NULL,
    [CREATED_SOURCE_TYPE_ID]      INT            NULL,
    [CREATED_SOURCE]              NVARCHAR (50)  NULL,
    [CREATED_DTTM]                DATETIME2 (7)  NULL,
    [LAST_UPDATED_SOURCE_TYPE_ID] INT            NULL,
    [LAST_UPDATED_SOURCE]         NVARCHAR (50)  NULL,
    [LAST_UPDATED_DTTM]           DATETIME2 (7)  NULL,
    [HIBERNATE_VERSION]           INT            NULL,
    [APPLY_TO_BUSINESS_PARTNERS]  INT            NULL,
    [ROLE_TYPE_ID]                INT            NULL,
    [DESCRIPTION]                 NVARCHAR (255) NULL,
    [Eff_Date]                    DATE           NOT NULL,
    [End_Date]                    DATE           NULL,
    [ActInd]                      CHAR (1)       NULL,
    [IsDeleted]                   CHAR (1)       NULL,
    [BatchID]                     BIGINT         NULL,
    [ProcessLogID]                BIGINT         NULL,
    CONSTRAINT [PK_MANH_ROLE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ROLE_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



