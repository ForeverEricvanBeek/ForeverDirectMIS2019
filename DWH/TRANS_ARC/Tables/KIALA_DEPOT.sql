CREATE TABLE [TRANS_ARC].[KIALA_DEPOT] (
    [DEPOT_CODE]           VARCHAR (20)   NOT NULL,
    [DEPOT_ID]             VARCHAR (20)   NULL,
    [DEPOT_NAME]           NVARCHAR (100) NULL,
    [DEPOT_STREET]         VARCHAR (50)   NULL,
    [DEPOT_HOUSE_NR]       VARCHAR (20)   NULL,
    [DEPOT_ADDRESS_LINE_2] VARCHAR (50)   NULL,
    [DEPOT_POSTAL_CODE]    VARCHAR (10)   NULL,
    [DEPOT_CITY]           VARCHAR (50)   NULL,
    [DEPOT_PROVINCE]       VARCHAR (50)   NULL,
    [DEPOT_COUNTRY_CODE]   VARCHAR (3)    NULL,
    [DEPOT_INFO]           NVARCHAR (100) NULL,
    [DEPOT_GROUP]          VARCHAR (20)   NULL,
    [DEPOT_REGIONAL_HUB]   VARCHAR (20)   NULL,
    [DEPOT_ROUTE]          VARCHAR (20)   NULL,
    [Eff_Date]             DATE           NOT NULL,
    [End_Date]             DATE           NULL,
    [ActInd]               CHAR (1)       NULL,
    [IsDeleted]            CHAR (1)       NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_KIALA_DEPOT] PRIMARY KEY CLUSTERED ([DEPOT_CODE] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

