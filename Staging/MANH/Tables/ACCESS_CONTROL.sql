CREATE TABLE [MANH].[ACCESS_CONTROL] (
    [ACCESS_CONTROL_ID]   INT           NOT NULL,
    [UCL_USER_ID]         INT           NULL,
    [ROLE_ID]             INT           NULL,
    [GEO_REGION_ID]       INT           NULL,
    [PARTNER_COMPANY_ID]  INT           NULL,
    [BUSINESS_UNIT_ID]    INT           NULL,
    [USER_GROUP_ID]       INT           NULL,
    [IS_INTERNAL_CONTROL] INT           NULL,
    [COMPANY_ID]          INT           NULL,
    [CREATED_DTTM]        DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM]   DATETIME2 (7) NULL,
    [BatchID]             BIGINT        NULL,
    [ProcessLogID]        BIGINT        NULL,
    CONSTRAINT [PK_MANH_ACCESS_CONTROL] PRIMARY KEY CLUSTERED ([ACCESS_CONTROL_ID] ASC)
);

