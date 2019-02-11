CREATE TABLE [IFS_ARC].[COMMODITY_GROUP] (
    [COMMODITY_CODE]   NVARCHAR (5)    NOT NULL,
    [PRIME_COMMODITY]  NVARCHAR (5)    NULL,
    [SECOND_COMMODITY] NVARCHAR (5)    NULL,
    [DESCRIPTION]      NVARCHAR (35)   NULL,
    [MIN_PERIODS]      INT             NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_COMMODITY_GROUP] PRIMARY KEY CLUSTERED ([COMMODITY_CODE] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





