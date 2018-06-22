CREATE TABLE [ATIMO].[costcenters] (
    [department_id]          SMALLINT       NOT NULL,
    [department_code]        NVARCHAR (50)  NULL,
    [department_description] NVARCHAR (250) NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_costcenters] PRIMARY KEY CLUSTERED ([department_id] ASC)
);

