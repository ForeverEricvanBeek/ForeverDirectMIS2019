CREATE TABLE [ATIMO_ARC].[timewize] (
    [track_id]        BIGINT         NOT NULL,
    [pers_key]        NVARCHAR (10)  CONSTRAINT [DF_timewize_pkey] DEFAULT ((0)) NOT NULL,
    [pers_id]         NVARCHAR (250) NULL,
    [pers_name]       NVARCHAR (50)  NULL,
    [bkdate]          DATETIME2 (7)  NOT NULL,
    [bkminutes]       SMALLINT       NULL,
    [bkhours]         NVARCHAR (10)  NULL,
    [bktype_id]       SMALLINT       NOT NULL,
    [bktype_code]     NVARCHAR (50)  NULL,
    [department_id]   SMALLINT       NOT NULL,
    [department_code] NVARCHAR (50)  NULL,
    [Eff_Date]        DATE           NOT NULL,
    [End_Date]        DATE           NULL,
    [ActInd]          CHAR (1)       NULL,
    [IsDeleted]       CHAR (1)       NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_timewize] PRIMARY KEY CLUSTERED ([track_id] ASC, [pers_key] ASC, [bkdate] ASC, [bktype_id] ASC, [department_id] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [DWH_ATIMO_ARC]
) ON [DWH_ATIMO_ARC];



