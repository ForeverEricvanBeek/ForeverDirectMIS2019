CREATE TABLE [DM].[ETL] (
    [ETL_ID]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [ETL_Date]     DATE          NOT NULL,
    [ETL_Time]     TIME (7)      NOT NULL,
    [ETL_DateTime] DATETIME2 (7) NULL,
    [ETL_Type]     TINYINT       NULL,
    CONSTRAINT [PK_ETL] PRIMARY KEY CLUSTERED ([ETL_ID] ASC) WITH (FILLFACTOR = 80)
);

