﻿CREATE TABLE [TRANS_ARC].[FTP_FILE] (
    [FTP_FILE_ID]  INT           NOT NULL,
    [FILE_TYPE]    VARCHAR (5)   NULL,
    [CREATED]      DATETIME2 (7) NULL,
    [PATH]         VARCHAR (260) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_FTP_FILE] PRIMARY KEY CLUSTERED ([FTP_FILE_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



