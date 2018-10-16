CREATE TABLE [TRANS].[OUTPUT_COMMAND] (
    [OUTPUT_COMMAND_ID] BIGINT        NOT NULL,
    [INTERFACE_ID]      BIGINT        NULL,
    [COMMAND]           VARCHAR (100) NULL,
    [FILE_NAME]         VARCHAR (260) NULL,
    [CREATED_TS]        DATETIME2 (7) DEFAULT (getdate()) NULL,
    [COMPLETED_TS]      DATETIME2 (7) NULL,
    [COMPLETED]         BIT           NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_OUTPUT_COMMAND] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [OUTPUT_COMMAND_ID] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



