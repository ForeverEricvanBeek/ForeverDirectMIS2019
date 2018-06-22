CREATE TABLE [MANH].[SHIPMENT_STATUS] (
    [SHIPMENT_STATUS] SMALLINT      NOT NULL,
    [DESCRIPTION]     NVARCHAR (20) NOT NULL,
    [SHORT_DESC]      NVARCHAR (8)  NULL,
    [Eff_Date]        DATE          NOT NULL,
    [End_Date]        DATE          NULL,
    [ActInd]          CHAR (1)      NULL,
    [IsDeleted]       CHAR (1)      NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIPMENT_STATUS] ASC)
);

