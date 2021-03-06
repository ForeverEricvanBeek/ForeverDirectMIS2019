﻿CREATE TABLE [TRANS].[PRINTER_LOOKUP] (
    [PRINTER_ID]    INT          NOT NULL,
    [PRINTER_KEY]   VARCHAR (20) NOT NULL,
    [PRINTER_VALUE] VARCHAR (50) NULL,
    [Eff_Date]      DATE         NOT NULL,
    [End_Date]      DATE         NULL,
    [ActInd]        CHAR (1)     NULL,
    [IsDeleted]     CHAR (1)     NULL,
    [BatchID]       BIGINT       NULL,
    [ProcessLogID]  BIGINT       NULL,
    CONSTRAINT [PK_PRINTER_LOOKUP] PRIMARY KEY CLUSTERED ([PRINTER_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





