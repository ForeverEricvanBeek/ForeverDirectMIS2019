CREATE TABLE [MANH_ARC].[SHIPMENT_WMS_STATUS] (
    [STATUS_CODE]  INT            NOT NULL,
    [DESCRIPTION]  NVARCHAR (100) NOT NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_WMS_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [STATUS_CODE] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





