CREATE TABLE [TRANS_ARC].[INFO_ENTRY] (
    [INFO_ENTRY_ID]      BIGINT        NOT NULL,
    [INFO_ENTRY_FILE_ID] INT           NULL,
    [POS_NR]             VARCHAR (20)  NULL,
    [TELEPHONE]          VARCHAR (20)  NULL,
    [EMAIL]              VARCHAR (50)  NULL,
    [DISTRIBUTOR_ID]     VARCHAR (20)  NULL,
    [CREATED]            DATETIME2 (7) NULL,
    [DONE]               BIT           NULL,
    [Eff_Date]           DATE          NOT NULL,
    [End_Date]           DATE          NULL,
    [ActInd]             CHAR (1)      NULL,
    [IsDeleted]          CHAR (1)      NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    CONSTRAINT [PK_INFO_ENTRY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INFO_ENTRY_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

