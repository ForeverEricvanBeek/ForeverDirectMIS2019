CREATE TABLE [TRANS_ARC].[ADDRESS] (
    [ADDRESS_ID]         BIGINT         NOT NULL,
    [INTERFACE_ID]       BIGINT         NOT NULL,
    [SHIPMENT_ID]        BIGINT         NOT NULL,
    [ADDRESS_TYPE]       VARCHAR (20)   NOT NULL,
    [NAME]               NVARCHAR (100) NULL,
    [LINE_1]             NVARCHAR (100) NULL,
    [LINE_2]             NVARCHAR (100) NULL,
    [LINE_3]             NVARCHAR (100) NULL,
    [LINE_4]             NVARCHAR (100) NULL,
    [POSTAL_CODE]        VARCHAR (10)   NULL,
    [CITY]               NVARCHAR (50)  NULL,
    [REGION]             VARCHAR (50)   NULL,
    [COUNTRY_CODE]       VARCHAR (3)    NULL,
    [CONTACT]            NVARCHAR (100) NULL,
    [TELEPHONE]          VARCHAR (20)   NULL,
    [EMAIL]              VARCHAR (100)  NULL,
    [ACCOUNT_NR]         VARCHAR (20)   NULL,
    [VAT_NR]             VARCHAR (20)   NULL,
    [IBAN]               VARCHAR (30)   NULL,
    [ORIGINAL_TELEPHONE] VARCHAR (20)   NULL,
    [ADDRESS_DEPOT_CODE] VARCHAR (10)   NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED ([ADDRESS_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



