CREATE TABLE [IFS].[PRES_OBJECT_GRANT] (
    [PO_ID]        NVARCHAR (200)  NOT NULL,
    [ROLE]         NVARCHAR (60)   NOT NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_PRES_OBJECT_GRANT] PRIMARY KEY CLUSTERED ([PO_ID] ASC, [ROLE] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





