CREATE TABLE [DOC_ARC].[Documents] (
    [id]                NVARCHAR (400) NOT NULL,
    [path]              NVARCHAR (400) NULL,
    [name]              NVARCHAR (400) NULL,
    [hash]              NVARCHAR (400) NULL,
    [idx]               INT            NULL,
    [archiveDateTime]   INT            NULL,
    [version]           NVARCHAR (400) NULL,
    [masterId]          NVARCHAR (400) NULL,
    [previousVersionId] NVARCHAR (400) NULL,
    [nextVersionId]     NVARCHAR (400) NULL,
    [documentType]      INT            NULL,
    [fileId]            NVARCHAR (400) NULL,
    [isDeleted]         INT            NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED ([id] ASC, [Eff_Date] ASC) ON [DWH_DOC_ARC]
) ON [DWH_DOC_ARC];







