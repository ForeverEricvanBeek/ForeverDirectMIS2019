CREATE TABLE [TRANS_ARC].[DPD_DEPOT] (
    [GEOPOSTDEPOTNUMBER] VARCHAR (20)   NOT NULL,
    [IATALIKECODE]       VARCHAR (20)   NULL,
    [GROUPID]            VARCHAR (20)   NULL,
    [NAME1]              NVARCHAR (100) NULL,
    [NAME2]              NVARCHAR (100) NULL,
    [ADDRESS1]           NVARCHAR (100) NULL,
    [ADDRESS2]           NVARCHAR (100) NULL,
    [POSTCODE]           VARCHAR (10)   NULL,
    [CITYNAME]           VARCHAR (50)   NULL,
    [COUNTRYCODE]        VARCHAR (3)    NOT NULL,
    [PHONE]              VARCHAR (30)   NOT NULL,
    [FAX]                VARCHAR (30)   NOT NULL,
    [MAIL]               VARCHAR (50)   NULL,
    [WEB]                VARCHAR (50)   NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK__DPD_DEPO__57A33E281273C1CD] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [GEOPOSTDEPOTNUMBER] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

