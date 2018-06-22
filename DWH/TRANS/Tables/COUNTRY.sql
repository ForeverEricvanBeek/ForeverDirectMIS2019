CREATE TABLE [TRANS].[COUNTRY] (
    [COUNTRY_CODE] VARCHAR (3)  NOT NULL,
    [COUNTRY_NAME] VARCHAR (50) NOT NULL,
    [PHONE_CODE]   VARCHAR (20) NOT NULL,
    [Eff_Date]     DATE         NOT NULL,
    [End_Date]     DATE         NULL,
    [ActInd]       CHAR (1)     NULL,
    [IsDeleted]    CHAR (1)     NULL,
    [BatchID]      BIGINT       NULL,
    [ProcessLogID] BIGINT       NULL,
    CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [Eff_Date] ASC)
);

