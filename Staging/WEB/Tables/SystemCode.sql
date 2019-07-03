CREATE TABLE [WEB].[SystemCode] (
    [SystemCode_ID]                   BIGINT        NOT NULL,
    [SystemCode_SystemCodeParentCode] NVARCHAR (50) NULL,
    [SystemCode_Code]                 NVARCHAR (50) NULL,
    [SystemCode_Value]                NVARCHAR (50) NULL,
    [BatchID]                         BIGINT        NULL,
    [ProcessLogID]                    BIGINT        NULL,
    CONSTRAINT [PK_SystemCode] PRIMARY KEY CLUSTERED ([SystemCode_ID] ASC)
);

