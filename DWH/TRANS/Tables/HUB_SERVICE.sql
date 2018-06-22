CREATE TABLE [TRANS].[HUB_SERVICE] (
    [HUB_SERVICE_ID]   INT            NOT NULL,
    [HUB_SERVICE_CODE] VARCHAR (20)   NULL,
    [HUB_SERVICE_NAME] NVARCHAR (100) NULL,
    [PRODUCT_ID]       INT            NULL,
    [HUB_FORWARDER_ID] INT            NULL,
    [CREATED]          DATETIME       NULL,
    [Eff_Date]         DATE           NOT NULL,
    [End_Date]         DATE           NULL,
    [ActInd]           CHAR (1)       NULL,
    [IsDeleted]        CHAR (1)       NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_HUB_SERVICE] PRIMARY KEY CLUSTERED ([HUB_SERVICE_ID] ASC, [Eff_Date] ASC)
);

