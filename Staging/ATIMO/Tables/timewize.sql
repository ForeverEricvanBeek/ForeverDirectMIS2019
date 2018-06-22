CREATE TABLE [ATIMO].[timewize] (
    [track_id]        BIGINT         NOT NULL,
    [pers_key]        NVARCHAR (10)  NOT NULL,
    [pers_id]         NVARCHAR (250) NULL,
    [pers_name]       NVARCHAR (50)  NULL,
    [bkdate]          DATETIME2 (7)  NOT NULL,
    [bkminutes]       SMALLINT       NULL,
    [bkhours]         NVARCHAR (10)  NULL,
    [bktype_id]       SMALLINT       NOT NULL,
    [bktype_code]     NVARCHAR (50)  NULL,
    [department_id]   SMALLINT       NOT NULL,
    [department_code] NVARCHAR (50)  NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_timewize] PRIMARY KEY CLUSTERED ([track_id] ASC, [pers_key] ASC, [bkdate] ASC, [bktype_id] ASC, [department_id] ASC)
);



