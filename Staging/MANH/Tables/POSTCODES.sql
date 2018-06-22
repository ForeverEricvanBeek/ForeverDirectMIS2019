CREATE TABLE [MANH].[POSTCODES] (
    [POSTAL_CODE]       NVARCHAR (10)   NOT NULL,
    [STATE_PROV]        NVARCHAR (3)    NOT NULL,
    [CITY]              NVARCHAR (40)   NOT NULL,
    [COUNTRY_CODE]      NVARCHAR (2)    NOT NULL,
    [LONGITUDE]         DECIMAL (10, 4) NULL,
    [LATITUDE]          DECIMAL (10, 4) NULL,
    [TIME_ZONE_ID]      INT             NULL,
    [MARK_FOR_DELETION] INT             NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL
);

