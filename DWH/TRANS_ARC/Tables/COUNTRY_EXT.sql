CREATE TABLE [TRANS_ARC].[COUNTRY_EXT] (
    [COUNTRY_CODE]   VARCHAR (3)  NOT NULL,
    [COUNTRY_NAME]   VARCHAR (50) NULL,
    [COUNTRY_CODE_3] VARCHAR (3)  NULL,
    [IANA_CODE]      VARCHAR (20) NULL,
    [COUNTRY_NR]     VARCHAR (3)  NULL,
    [COUNTRY_TEL]    VARCHAR (20) NULL,
    [Eff_Date]       DATE         NOT NULL,
    [End_Date]       DATE         NULL,
    [ActInd]         CHAR (1)     NULL,
    [IsDeleted]      CHAR (1)     NULL,
    [BatchID]        BIGINT       NULL,
    [ProcessLogID]   BIGINT       NULL,
    CONSTRAINT [PK_COUNTRY_EXT] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

