CREATE TABLE [TRANS].[DPD_SERVICE] (
    [SERVICE_NR]       VARCHAR (20) NOT NULL,
    [SERVICE_TEXT]     VARCHAR (20) NULL,
    [SERVICE_MARK]     VARCHAR (20) NULL,
    [SERVICE_ELEMENTS] VARCHAR (50) NULL,
    [Eff_Date]         DATE         NOT NULL,
    [End_Date]         DATE         NULL,
    [ActInd]           CHAR (1)     NULL,
    [IsDeleted]        CHAR (1)     NULL,
    [BatchID]          BIGINT       NULL,
    [ProcessLogID]     BIGINT       NULL,
    CONSTRAINT [PK_DPD_SERVICE] PRIMARY KEY CLUSTERED ([SERVICE_NR] ASC, [Eff_Date] ASC)
);

