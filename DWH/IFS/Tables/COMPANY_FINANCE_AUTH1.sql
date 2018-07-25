CREATE TABLE [IFS].[COMPANY_FINANCE_AUTH1] (
    [COMPANY]      NVARCHAR (30) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_COMPANY_FINANCE_AUTH1] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [Eff_Date] ASC)
);

