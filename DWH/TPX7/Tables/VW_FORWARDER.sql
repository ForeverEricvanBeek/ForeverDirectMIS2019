﻿CREATE TABLE [TPX7].[VW_FORWARDER] (
    [FORWARDER_CODE] VARCHAR (3)  NOT NULL,
    [FORWARDER_NAME] VARCHAR (50) NOT NULL,
    [STATUS]         VARCHAR (10) NOT NULL,
    [Eff_Date]       DATE         NOT NULL,
    [End_Date]       DATE         NULL,
    [ActInd]         CHAR (1)     NULL,
    [IsDeleted]      CHAR (1)     NULL,
    [BatchID]        BIGINT       NULL,
    [ProcessLogID]   BIGINT       NULL,
    CONSTRAINT [PK_FORWARDER] PRIMARY KEY CLUSTERED ([FORWARDER_CODE] ASC, [Eff_Date] ASC) ON [DWH_TPX7]
) ON [DWH_TPX7];





