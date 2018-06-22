CREATE TABLE [ATIMO].[hourtypes] (
    [bktype_id]          SMALLINT       NOT NULL,
    [bktype_code]        NVARCHAR (50)  NULL,
    [bktype_description] NVARCHAR (250) NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_hourtypes] PRIMARY KEY CLUSTERED ([bktype_id] ASC)
);

