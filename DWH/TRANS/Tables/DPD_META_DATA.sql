CREATE TABLE [TRANS].[DPD_META_DATA] (
    [META_DATA_ID]    INT          NOT NULL,
    [META_DATA_KEY]   VARCHAR (20) NULL,
    [META_DATA_VALUE] VARCHAR (50) NULL,
    [Eff_Date]        DATE         NOT NULL,
    [End_Date]        DATE         NULL,
    [ActInd]          CHAR (1)     NULL,
    [IsDeleted]       CHAR (1)     NULL,
    [BatchID]         BIGINT       NULL,
    [ProcessLogID]    BIGINT       NULL,
    CONSTRAINT [PK_DPD_META_DATA] PRIMARY KEY CLUSTERED ([META_DATA_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





