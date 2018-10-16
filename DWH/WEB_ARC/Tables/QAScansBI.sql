CREATE TABLE [WEB_ARC].[QAScansBI] (
    [ID]                       INT             NOT NULL,
    [OLPNId]                   NVARCHAR (50)   NOT NULL,
    [OLPNObject]               NVARCHAR (MAX)  NULL,
    [OLPNReason]               NVARCHAR (4000) NULL,
    [OLPNStatus]               NVARCHAR (50)   NULL,
    [OLPNWeight]               DECIMAL (18, 4) NULL,
    [OLPNWeightIssue]          BIT             NULL,
    [OLPNWeightMin]            DECIMAL (18, 4) NULL,
    [OLPNWeightMax]            DECIMAL (18, 4) NULL,
    [OLPNILPNSTATUS_ISSUE]     TINYINT         NULL,
    [OLPNEXPIRATIONDATE_ISSUE] TINYINT         NULL,
    [OLPNILPNLOCATION_ISSUE]   TINYINT         NULL,
    [OLPNOVERPACK_ISSUE]       TINYINT         NULL,
    [OLPNWRONGITEMPICK_ISSUE]  TINYINT         NULL,
    [OLPNUNKNOWN_ISSUE]        TINYINT         NULL,
    [SPECIALINSTRUCTIONS]      NVARCHAR (500)  NULL,
    [Created_Date]             DATETIME2 (7)   NULL,
    [Created_By]               NVARCHAR (255)  NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_QAScansBI_1] PRIMARY KEY CLUSTERED ([ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

