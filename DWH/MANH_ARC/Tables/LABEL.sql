CREATE TABLE [MANH_ARC].[LABEL] (
    [LABEL_ID]          INT            NOT NULL,
    [KEY]               NVARCHAR (500) NOT NULL,
    [VALUE]             NVARCHAR (500) NOT NULL,
    [BUNDLE_NAME]       NVARCHAR (50)  NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_MANH_LABEL] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LABEL_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





