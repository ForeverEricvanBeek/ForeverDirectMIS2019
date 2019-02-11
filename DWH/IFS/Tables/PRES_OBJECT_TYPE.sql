CREATE TABLE [IFS].[PRES_OBJECT_TYPE] (
    [TYPE]         NVARCHAR (50)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (200)  NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_PRES_OBJECT_TYPE] PRIMARY KEY CLUSTERED ([TYPE] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





