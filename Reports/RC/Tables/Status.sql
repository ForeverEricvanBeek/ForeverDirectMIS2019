CREATE TABLE [RC].[Status] (
    [Status_ID]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [Status_Code]        INT             NULL,
    [Status_Description] NVARCHAR (500)  NULL,
    [Status_Text]        NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([Status_ID] ASC)
);

