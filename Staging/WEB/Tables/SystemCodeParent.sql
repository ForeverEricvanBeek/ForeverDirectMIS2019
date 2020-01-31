CREATE TABLE [WEB].[SystemCodeParent] (
    [SystemCodeParent_ID]          BIGINT         NOT NULL,
    [SystemCodeParent_Code]        NVARCHAR (50)  NULL,
    [SystemCodeParent_Description] NVARCHAR (500) NULL,
    [SystemCodeParent_ParentCode]  NVARCHAR (50)  NULL,
    [SystemCodeParent_Deleted]     BIT            NULL,
    [SystemCodeParent_UpdatedBy]   NVARCHAR (256) NULL,
    [SystemCodeParent_UpdatedDate] DATETIME2 (7)  NULL,
    [SystemCodeParent_CreatedBy]   NVARCHAR (256) NULL,
    [SystemCodeParent_CreatedDate] DATETIME2 (7)  NULL,
    [BatchID]                      BIGINT         NULL,
    [ProcessLogID]                 BIGINT         NULL,
    CONSTRAINT [PK_SystemCodeParent] PRIMARY KEY CLUSTERED ([SystemCodeParent_ID] ASC)
);



