CREATE TABLE [TRANS].[BRING_FORWARDER_REF] (
    [POS_NR]                 VARCHAR (20) NOT NULL,
    [SHIPPER_SHIPMENT_REF]   VARCHAR (50) NULL,
    [FORWARDER_SHIPMENT_REF] VARCHAR (50) NULL,
    [TOTAL_COLLI]            SMALLINT     NULL,
    [PACKAGE_NR_START]       VARCHAR (50) NULL,
    [PACKAGE_NR_END]         VARCHAR (50) NULL,
    [Eff_Date]               DATE         NOT NULL,
    [End_Date]               DATE         NULL,
    [ActInd]                 CHAR (1)     NULL,
    [IsDeleted]              CHAR (1)     NULL,
    [BatchID]                BIGINT       NULL,
    [ProcessLogID]           BIGINT       NULL,
    CONSTRAINT [PK_BRING_FORWARDER_REF] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [POS_NR] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



