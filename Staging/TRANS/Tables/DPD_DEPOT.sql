CREATE TABLE [TRANS].[DPD_DEPOT] (
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
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_DPD_DEPOT] PRIMARY KEY CLUSTERED ([GEOPOSTDEPOTNUMBER] ASC)
);

