CREATE TABLE [TRANS_ARC].[DPD_COUNTRY] (
    [COUNTRY_NR]           VARCHAR (3)  NOT NULL,
    [COUNTRY_CODE]         VARCHAR (3)  NULL,
    [COUNTRY_CODE_3]       VARCHAR (3)  NULL,
    [DESTINATIONLANGUAGES] VARCHAR (50) NULL,
    [FLAGPOSTCODENO]       VARCHAR (50) NULL,
    [POSTCODEPATTERN]      VARCHAR (50) NULL,
    [Eff_Date]             DATE         NOT NULL,
    [End_Date]             DATE         NULL,
    [ActInd]               CHAR (1)     NULL,
    [IsDeleted]            CHAR (1)     NULL,
    [BatchID]              BIGINT       NULL,
    [ProcessLogID]         BIGINT       NULL,
    CONSTRAINT [PK_DPD_COUNTRY] PRIMARY KEY CLUSTERED ([COUNTRY_NR] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



