CREATE TABLE [TRANS].[DHL_DESTINATION] (
    [DHL_ROUTING_ESD_ID]         INT             NOT NULL,
    [COUNTRY_CODE]               VARCHAR (3)     NULL,
    [POSTAL_CODE_FROM]           VARCHAR (10)    NULL,
    [POSTAL_CODE_TO]             VARCHAR (10)    NULL,
    [SERVICE_AREA_CODE]          VARCHAR (5)     NULL,
    [CITY]                       VARCHAR (50)    NULL,
    [SUBURB_NAME]                VARCHAR (50)    NULL,
    [COUNTRY_DIVISION_CODE]      VARCHAR (5)     NULL,
    [COUNTRY_DIVISION_NAME]      NVARCHAR (100)  NULL,
    [POSTAL_CODE_TYPE]           VARCHAR (5)     NULL,
    [DISTANCE_FROM_FACILITY]     DECIMAL (10, 3) NULL,
    [FACILITY_IDENTIFIER]        VARCHAR (20)    NULL,
    [FACILITY_TYPE_CODE]         VARCHAR (5)     NULL,
    [FACILITY_NETWORK_TYPE_CODE] VARCHAR (5)     NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL
);

