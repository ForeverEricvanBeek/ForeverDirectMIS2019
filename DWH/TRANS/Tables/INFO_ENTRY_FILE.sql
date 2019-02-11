CREATE TABLE [TRANS].[INFO_ENTRY_FILE] (
    [INFO_ENTRY_FILE_ID] INT           NOT NULL,
    [FILE_NAME]          VARCHAR (260) NULL,
    [CREATED]            DATETIME2 (7) NULL,
    [Eff_Date]           DATE          NOT NULL,
    [End_Date]           DATE          NULL,
    [ActInd]             CHAR (1)      NULL,
    [IsDeleted]          CHAR (1)      NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    CONSTRAINT [PK_INFO_ENTRY_FILE] PRIMARY KEY CLUSTERED ([INFO_ENTRY_FILE_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





