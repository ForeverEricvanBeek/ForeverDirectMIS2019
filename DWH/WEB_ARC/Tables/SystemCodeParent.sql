CREATE TABLE [WEB_ARC].[SystemCodeParent] (
    [SystemCodeParent_ID]          BIGINT         NOT NULL,
    [SystemCodeParent_Code]        NVARCHAR (50)  NULL,
    [SystemCodeParent_Description] NVARCHAR (500) NULL,
    [SystemCodeParent_ParentCode]  NVARCHAR (50)  NULL,
    [SystemCodeParent_Deleted]     BIT            NULL,
    [SystemCodeParent_UpdatedBy]   NVARCHAR (256) NULL,
    [SystemCodeParent_UpdatedDate] DATETIME2 (7)  NULL,
    [SystemCodeParent_CreatedBy]   NVARCHAR (256) NULL,
    [SystemCodeParent_CreatedDate] DATETIME2 (7)  NULL,
    [Eff_Date]                     DATE           NOT NULL,
    [End_Date]                     DATE           NULL,
    [ActInd]                       CHAR (1)       NULL,
    [IsDeleted]                    CHAR (1)       NULL,
    [BatchID]                      BIGINT         NULL,
    [ProcessLogID]                 BIGINT         NULL,
    CONSTRAINT [PK_SystemCodeParent] PRIMARY KEY CLUSTERED ([SystemCodeParent_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];



