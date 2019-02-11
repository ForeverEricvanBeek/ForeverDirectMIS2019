CREATE TABLE [TRANS].[POSTNORD_DEPOT_ZIP] (
    [PN_COUNTRY_CODE] VARCHAR (3)  NOT NULL,
    [PN_POSTAL_CODE]  VARCHAR (10) NOT NULL,
    [PN_DEPOT_ID]     INT          NOT NULL,
    [Eff_Date]        DATE         NOT NULL,
    [End_Date]        DATE         NULL,
    [ActInd]          CHAR (1)     NULL,
    [IsDeleted]       CHAR (1)     NULL,
    [BatchID]         BIGINT       NULL,
    [ProcessLogID]    BIGINT       NULL,
    CONSTRAINT [PK_POSTNORD_DEPOT_ZIP] PRIMARY KEY CLUSTERED ([PN_COUNTRY_CODE] ASC, [PN_POSTAL_CODE] ASC, [PN_DEPOT_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





