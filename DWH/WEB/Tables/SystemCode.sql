CREATE TABLE [WEB].[SystemCode] (
    [SystemCode_ID]                   BIGINT        NOT NULL,
    [SystemCode_SystemCodeParentCode] NVARCHAR (50) NULL,
    [SystemCode_Code]                 NVARCHAR (50) NULL,
    [SystemCode_Value]                NVARCHAR (50) NULL,
    [Eff_Date]                        DATE          NOT NULL,
    [End_Date]                        DATE          NULL,
    [ActInd]                          CHAR (1)      NULL,
    [IsDeleted]                       CHAR (1)      NULL,
    [BatchID]                         BIGINT        NULL,
    [ProcessLogID]                    BIGINT        NULL,
    CONSTRAINT [PK_SystemCode] PRIMARY KEY CLUSTERED ([SystemCode_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB]
) ON [DWH_WEB];

