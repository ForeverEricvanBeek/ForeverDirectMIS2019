CREATE TABLE [IFS].[SUPPLIER_INFO_ADDRESS] (
    [SUPPLIER_ID]    NVARCHAR (20)   NOT NULL,
    [ADDRESS_ID]     NVARCHAR (50)   NOT NULL,
    [ADDRESS]        NVARCHAR (2000) NULL,
    [EAN_LOCATION]   NVARCHAR (100)  NULL,
    [VALID_FROM]     DATETIME2 (7)   NULL,
    [VALID_TO]       DATETIME2 (7)   NULL,
    [PARTY]          NVARCHAR (20)   NULL,
    [DEFAULT_DOMAIN] NVARCHAR (5)    NULL,
    [COUNTRY]        NVARCHAR (4000) NULL,
    [COUNTRY_DB]     NVARCHAR (2)    NULL,
    [PARTY_TYPE]     NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]  NVARCHAR (20)   NULL,
    [ADDRESS1]       NVARCHAR (50)   NULL,
    [ADDRESS2]       NVARCHAR (50)   NULL,
    [C_ADDRESS3]     NVARCHAR (50)   NULL,
    [C_ADDRESS4]     NVARCHAR (50)   NULL,
    [ZIP_CODE]       NVARCHAR (35)   NULL,
    [CITY]           NVARCHAR (35)   NULL,
    [COUNTY]         NVARCHAR (35)   NULL,
    [STATE]          NVARCHAR (35)   NULL,
    [OBJID]          NVARCHAR (4000) NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [Eff_Date]       DATE            NOT NULL,
    [End_Date]       DATE            NULL,
    [ActInd]         CHAR (1)        NULL,
    [IsDeleted]      CHAR (1)        NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    CONSTRAINT [PK_SUPPLIER_INFO_ADDRESS] PRIMARY KEY CLUSTERED ([SUPPLIER_ID] ASC, [ADDRESS_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





