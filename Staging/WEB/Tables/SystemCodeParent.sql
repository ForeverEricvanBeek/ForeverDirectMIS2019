CREATE TABLE [WEB].[SystemCodeParent] (
    [SystemCodeParent_ID]          BIGINT         NOT NULL,
    [SystemCodeParent_Code]        NVARCHAR (50)  NULL,
    [SystemCodeParent_Description] NVARCHAR (500) NULL,
    [BatchID]                      BIGINT         NULL,
    [ProcessLogID]                 BIGINT         NULL,
    CONSTRAINT [PK_SystemCodeParent] PRIMARY KEY CLUSTERED ([SystemCodeParent_ID] ASC)
);

