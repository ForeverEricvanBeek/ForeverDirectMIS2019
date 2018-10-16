﻿CREATE TABLE [TRANS_ARC].[KIALA_DEPOT_OLD_2] (
    [DEPOT_CODE]           VARCHAR (20)   NOT NULL,
    [DEPOT_ID]             VARCHAR (20)   NOT NULL,
    [DEPOT_NAME]           NVARCHAR (100) NOT NULL,
    [DEPOT_STREET]         VARCHAR (50)   NOT NULL,
    [DEPOT_HOUSE_NR]       VARCHAR (20)   NOT NULL,
    [DEPOT_ADDRESS_LINE_2] VARCHAR (50)   NOT NULL,
    [DEPOT_POSTAL_CODE]    VARCHAR (10)   NOT NULL,
    [DEPOT_CITY]           VARCHAR (50)   NOT NULL,
    [DEPOT_PROVINCE]       VARCHAR (50)   NOT NULL,
    [DEPOT_COUNTRY_CODE]   VARCHAR (3)    NOT NULL,
    [DEPOT_INFO]           NVARCHAR (100) NOT NULL,
    [Eff_Date]             DATE           NOT NULL,
    [End_Date]             DATE           NULL,
    [ActInd]               CHAR (1)       NULL,
    [IsDeleted]            CHAR (1)       NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_KIALA_DEPOT_OLD_2] PRIMARY KEY CLUSTERED ([DEPOT_ADDRESS_LINE_2] ASC, [DEPOT_CITY] ASC, [DEPOT_POSTAL_CODE] ASC, [DEPOT_PROVINCE] ASC, [DEPOT_STREET] ASC, [DEPOT_CODE] ASC, [DEPOT_COUNTRY_CODE] ASC, [DEPOT_HOUSE_NR] ASC, [DEPOT_ID] ASC, [DEPOT_INFO] ASC, [DEPOT_NAME] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

