CREATE TABLE [TRANS].[CUSTOMS_DOCUMENT] (
    [INTERFACE_ID] BIGINT        NOT NULL,
    [PATH]         VARCHAR (260) NULL,
    [CREATED]      DATETIME2 (7) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_CUSTOMS_DOCUMENT] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC, [Eff_Date] ASC)
);

