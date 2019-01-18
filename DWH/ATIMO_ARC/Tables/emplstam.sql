﻿CREATE TABLE [ATIMO_ARC].[emplstam] (
    [pers_key]               NVARCHAR (10)  NOT NULL,
    [pers_id]                NVARCHAR (250) NULL,
    [badge_id]               INT            NULL,
    [bsn]                    NVARCHAR (250) NULL,
    [name]                   NVARCHAR (100) NULL,
    [department_code]        NVARCHAR (50)  NULL,
    [department_description] NVARCHAR (50)  NULL,
    [costcenter_code]        NVARCHAR (50)  NULL,
    [costcenter_description] NVARCHAR (50)  NULL,
    [supervisor]             NVARCHAR (50)  NULL,
    [timing]                 BIT            NULL,
    [empoyer]                NVARCHAR (50)  NULL,
    [employee_start]         DATETIME2 (7)  NULL,
    [employee_end]           DATETIME2 (7)  NULL,
    [work_week_hours]        NVARCHAR (10)  NULL,
    [Eff_Date]               DATE           NOT NULL,
    [End_Date]               DATE           NULL,
    [ActInd]                 CHAR (1)       NULL,
    [IsDeleted]              CHAR (1)       NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_emplstam] PRIMARY KEY CLUSTERED ([pers_key] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [DWH_ATIMO_ARC]
) ON [DWH_ATIMO_ARC];



