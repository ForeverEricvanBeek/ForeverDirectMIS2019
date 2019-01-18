CREATE TABLE [IFS_ARC].[CUSTOMER_GROUP] (
    [CUST_GRP]     NVARCHAR (10)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (35)   NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_CUSTOMER_GROUP] PRIMARY KEY CLUSTERED ([CUST_GRP] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



