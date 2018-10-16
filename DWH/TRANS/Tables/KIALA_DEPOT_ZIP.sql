CREATE TABLE [TRANS].[KIALA_DEPOT_ZIP] (
    [POSTAL_CODE]    VARCHAR (10) NOT NULL,
    [COUNTRY_CODE]   VARCHAR (3)  NOT NULL,
    [KIALA_DEPOT_ID] VARCHAR (20) NOT NULL,
    [PRIORITY]       INT          NOT NULL,
    [Eff_Date]       DATE         NOT NULL,
    [End_Date]       DATE         NULL,
    [ActInd]         CHAR (1)     NULL,
    [IsDeleted]      CHAR (1)     NULL,
    [BatchID]        BIGINT       NULL,
    [ProcessLogID]   BIGINT       NULL,
    CONSTRAINT [PK_KIALA_DEPOT_ZIP] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [KIALA_DEPOT_ID] ASC, [POSTAL_CODE] ASC, [PRIORITY] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



