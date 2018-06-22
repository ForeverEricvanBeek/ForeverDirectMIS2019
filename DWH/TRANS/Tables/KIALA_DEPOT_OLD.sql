﻿CREATE TABLE [TRANS].[KIALA_DEPOT_OLD] (
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
    [Eff_Date]             DATE           NOT NULL,
    [End_Date]             DATE           NULL,
    [ActInd]               CHAR (1)       NULL,
    [IsDeleted]            CHAR (1)       NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_KIALA_DEPOT_OLD] PRIMARY KEY CLUSTERED ([DEPOT_CODE] ASC, [Eff_Date] ASC)
);

