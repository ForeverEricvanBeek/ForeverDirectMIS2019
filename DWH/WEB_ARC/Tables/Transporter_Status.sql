CREATE TABLE [WEB_ARC].[Transporter_Status] (
    [Carrier]      NVARCHAR (50) NOT NULL,
    [Ship_Via]     NVARCHAR (50) NOT NULL,
    [Status]       NVARCHAR (50) NOT NULL,
    [Description]  NVARCHAR (50) NULL,
    [Lead_Time]    TINYINT       NULL,
    [Sort]         TINYINT       NULL,
    [Category]     NVARCHAR (1)  NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_Transporter_Status] PRIMARY KEY CLUSTERED ([Carrier] ASC, [Eff_Date] ASC, [Ship_Via] ASC, [Status] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

