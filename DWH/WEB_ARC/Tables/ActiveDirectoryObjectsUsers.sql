CREATE TABLE [WEB_ARC].[ActiveDirectoryObjectsUsers] (
    [ID]           BIGINT   NOT NULL,
    [ObjectID]     BIGINT   NOT NULL,
    [UserID]       BIGINT   NOT NULL,
    [Eff_Date]     DATE     NOT NULL,
    [End_Date]     DATE     NULL,
    [ActInd]       CHAR (1) NULL,
    [IsDeleted]    CHAR (1) NULL,
    [BatchID]      BIGINT   NULL,
    [ProcessLogID] BIGINT   NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryObjectsUsers] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

