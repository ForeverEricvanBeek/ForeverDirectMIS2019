CREATE TABLE [IFS_ARC].[CUSTOMER_PARENTS] (
    [CUSTOMER_NO]     NVARCHAR (20) NOT NULL,
    [HIERARCHY_ID]    NVARCHAR (10) NOT NULL,
    [CUSTOMER_PARENT] NVARCHAR (20) NOT NULL,
    [Eff_Date]        DATE          NOT NULL,
    [End_Date]        DATE          NULL,
    [ActInd]          CHAR (1)      NULL,
    [IsDeleted]       CHAR (1)      NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_CUSTOMER_PARENTS] PRIMARY KEY CLUSTERED ([CUSTOMER_NO] ASC, [CUSTOMER_PARENT] ASC, [Eff_Date] ASC, [HIERARCHY_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

