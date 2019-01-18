CREATE TABLE [KEWILL_ARC].[tspakm] (
    [vrfilk]       INT             NOT NULL,
    [rnropd]       BIGINT          NOT NULL,
    [artkd]        NVARCHAR (35)   NOT NULL,
    [ptykd]        NVARCHAR (20)   NOT NULL,
    [ptdati]       DATETIME2 (6)   NOT NULL,
    [vrvolg]       TINYINT         NOT NULL,
    [vrvrdt]       TINYINT         NOT NULL,
    [tskenm]       SMALLINT        NOT NULL,
    [tsiitp]       TINYINT         NULL,
    [tsvkeu]       NVARCHAR (20)   NULL,
    [tsvken]       NUMERIC (19, 5) NULL,
    [tsvked]       DATETIME2 (6)   NULL,
    [tsvket]       TIME (4)        NULL,
    [tsvkec]       NCHAR (1)       NULL,
    [tsprnm]       NUMERIC (19, 5) NULL,
    [fill31]       NVARCHAR (31)   NULL,
    [tsiwrd]       NVARCHAR (20)   NULL,
    [tsvkex]       NVARCHAR (60)   NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_tspakm] PRIMARY KEY CLUSTERED ([vrfilk] ASC, [vrvolg] ASC, [vrvrdt] ASC, [artkd] ASC, [Eff_Date] ASC, [ptdati] ASC, [ptykd] ASC, [rnropd] ASC, [tskenm] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_KEWILL_ARC]
) ON [DWH_KEWILL_ARC];



