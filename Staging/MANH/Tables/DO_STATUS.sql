﻿CREATE TABLE [MANH].[DO_STATUS] (
    [ORDER_STATUS] SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (40) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_DO_STATUS] PRIMARY KEY CLUSTERED ([ORDER_STATUS] ASC)
);

