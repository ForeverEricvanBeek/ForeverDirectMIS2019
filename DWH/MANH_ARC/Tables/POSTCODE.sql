CREATE TABLE [MANH_ARC].[POSTCODE] (
    [POSTAL_CODE]       NVARCHAR (10)   NOT NULL,
    [STATE_PROV]        NVARCHAR (3)    NOT NULL,
    [CITY]              NVARCHAR (40)   NOT NULL,
    [COUNTRY_CODE]      NVARCHAR (2)    NOT NULL,
    [LONGITUDE]         DECIMAL (10, 4) NULL,
    [LATITUDE]          DECIMAL (10, 4) NULL,
    [TIME_ZONE_ID]      INT             NULL,
    [MARK_FOR_DELETION] INT             NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_POSTCODE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [POSTAL_CODE] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

