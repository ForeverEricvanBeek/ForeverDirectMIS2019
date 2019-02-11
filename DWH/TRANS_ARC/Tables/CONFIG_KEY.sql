CREATE TABLE [TRANS_ARC].[CONFIG_KEY] (
    [CONFIG_KEY]             VARCHAR (20)  NOT NULL,
    [CONFIG_KEY_DESCRIPTION] VARCHAR (200) NULL,
    [Eff_Date]               DATE          NOT NULL,
    [End_Date]               DATE          NULL,
    [ActInd]                 CHAR (1)      NULL,
    [IsDeleted]              CHAR (1)      NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_CONFIG_KEY] PRIMARY KEY CLUSTERED ([CONFIG_KEY] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





