CREATE TABLE [KEWILL_ARC].[tsartc] (
    [artkd]        NVARCHAR (45)   NOT NULL,
    [colkd]        NVARCHAR (2)    NOT NULL,
    [aanteh]       INT             NULL,
    [aantgw]       NUMERIC (14, 3) NULL,
    [gewcbm]       NUMERIC (5, 2)  NULL,
    [likprs]       NUMERIC (15, 2) NULL,
    [vrleng]       NUMERIC (5, 2)  NULL,
    [vrbree]       NUMERIC (5, 2)  NULL,
    [vrhgte]       NUMERIC (5, 2)  NULL,
    [rnropd]       INT             NOT NULL,
    [tsaco1]       NUMERIC (14, 3) NULL,
    [tsaco2]       NUMERIC (14, 3) NULL,
    [tsaco3]       NUMERIC (14, 3) NULL,
    [tsaco4]       NUMERIC (14, 3) NULL,
    [tstrco]       NVARCHAR (2)    NULL,
    [tspaJN]       NCHAR (1)       NULL,
    [ntgew]        NUMERIC (14, 3) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tsartc] PRIMARY KEY CLUSTERED ([artkd] ASC, [colkd] ASC, [Eff_Date] ASC, [rnropd] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];



