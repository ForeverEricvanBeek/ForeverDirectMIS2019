CREATE TABLE [ATIMO_ARC].[costcenters] (
    [department_id]          SMALLINT       NOT NULL,
    [department_code]        NVARCHAR (50)  NULL,
    [department_description] NVARCHAR (250) NULL,
    [Eff_Date]               DATE           NOT NULL,
    [End_Date]               DATE           NULL,
    [ActInd]                 CHAR (1)       NULL,
    [IsDeleted]              CHAR (1)       NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_costcenters] PRIMARY KEY CLUSTERED ([department_id] ASC, [Eff_Date] ASC) ON [DWH_ATIMO_ARC]
) ON [DWH_ATIMO_ARC];

