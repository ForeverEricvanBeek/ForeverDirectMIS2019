CREATE TABLE [IFS].[COMPANY_SITE] (
    [CONTRACT]     NVARCHAR (5)    NOT NULL,
    [DESCRIPTION]  NVARCHAR (20)   NULL,
    [COMPANY]      NVARCHAR (20)   NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (14)   NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_COMPANY_SITE] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [Eff_Date] ASC)
);

