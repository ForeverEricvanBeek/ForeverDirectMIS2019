CREATE TABLE [MANH].[CUSTOM_FIELD] (
    [CUSTOM_FIELD_ID]   INT             NOT NULL,
    [NAME]              NVARCHAR (100)  NOT NULL,
    [CUSTOM_PANEL_ID]   INT             NOT NULL,
    [CUSTOM_PAGE_ID]    INT             NULL,
    [ATTRIBUTES]        NVARCHAR (1000) NOT NULL,
    [COMPONENT_ID]      NVARCHAR (200)  NULL,
    [POSITION]          INT             NOT NULL,
    [VISIBLE]           INT             NOT NULL,
    [MARK_FOR_DELETION] INT             NOT NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_CUSTOM_FIELD] PRIMARY KEY CLUSTERED ([CUSTOM_FIELD_ID] ASC)
);

