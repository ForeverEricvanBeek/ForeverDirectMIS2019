CREATE TABLE [TRANS].[INCOTERM] (
    [INCOTERM_CODE] VARCHAR (3)    NOT NULL,
    [INCOTERM_NAME] NVARCHAR (100) NULL,
    [PAYER]         CHAR (1)       NULL,
    [Eff_Date]      DATE           NOT NULL,
    [End_Date]      DATE           NULL,
    [ActInd]        CHAR (1)       NULL,
    [IsDeleted]     CHAR (1)       NULL,
    [BatchID]       BIGINT         NULL,
    [ProcessLogID]  BIGINT         NULL,
    CONSTRAINT [PK_INCOTERM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INCOTERM_CODE] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



