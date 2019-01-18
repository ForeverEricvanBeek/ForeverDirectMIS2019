﻿CREATE TABLE [TRANS_ARC].[LABEL_REPRINT] (
    [LABEL_REPRINT_ID] INT          NOT NULL,
    [PURCHASE_ORDER]   VARCHAR (20) NULL,
    [TC_ORDER_ID]      VARCHAR (20) NULL,
    [OLPN]             VARCHAR (20) NULL,
    [KIALA_POINT]      VARCHAR (10) NULL,
    [FILE_NR]          INT          NULL,
    [Eff_Date]         DATE         NOT NULL,
    [End_Date]         DATE         NULL,
    [ActInd]           CHAR (1)     NULL,
    [IsDeleted]        CHAR (1)     NULL,
    [BatchID]          BIGINT       NULL,
    [ProcessLogID]     BIGINT       NULL,
    CONSTRAINT [PK__LABEL_RE__83241E9D23F3538A] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LABEL_REPRINT_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



