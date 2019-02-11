CREATE TABLE [TRANS].[POSTNORD_DEPOT] (
    [PN_DEPOT_ID]           INT            NOT NULL,
    [PN_DEPOT_COUNTRY_CODE] VARCHAR (3)    NOT NULL,
    [PN_DEPOT_NAME]         NVARCHAR (100) NULL,
    [PN_DEPOT_STREET]       NVARCHAR (100) NULL,
    [PN_DEPOT_POSTAL_CODE]  VARCHAR (10)   NULL,
    [PN_DEPOT_CITY]         NVARCHAR (100) NULL,
    [PN_DEPOT_SORTING_CODE] VARCHAR (5)    NULL,
    [Eff_Date]              DATE           NOT NULL,
    [End_Date]              DATE           NULL,
    [ActInd]                CHAR (1)       NULL,
    [IsDeleted]             CHAR (1)       NULL,
    [BatchID]               BIGINT         NULL,
    [ProcessLogID]          BIGINT         NULL,
    CONSTRAINT [PK_POSTNORD_DEPOT_1] PRIMARY KEY CLUSTERED ([PN_DEPOT_ID] ASC, [PN_DEPOT_COUNTRY_CODE] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





