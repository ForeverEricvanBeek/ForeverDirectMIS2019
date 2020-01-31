CREATE TABLE [WEB].[SystemCode] (
    [SystemCode_ID]                   BIGINT          NOT NULL,
    [SystemCode_SystemCodeParentCode] NVARCHAR (50)   NULL,
    [SystemCode_Code]                 NVARCHAR (50)   NULL,
    [SystemCode_Value]                NVARCHAR (50)   NULL,
    [SystemCode_Param]                NVARCHAR (4000) NULL,
    [SystemCode_Deleted]              BIT             NULL,
    [SystemCode_UpdatedBy]            NVARCHAR (256)  NULL,
    [SystemCode_UpdatedDate]          DATETIME2 (7)   NULL,
    [SystemCode_CreatedBy]            NVARCHAR (256)  NULL,
    [SystemCode_CreatedDate]          DATETIME2 (7)   NULL,
    [BatchID]                         BIGINT          NULL,
    [ProcessLogID]                    BIGINT          NULL,
    CONSTRAINT [PK_SystemCode] PRIMARY KEY CLUSTERED ([SystemCode_ID] ASC)
);



