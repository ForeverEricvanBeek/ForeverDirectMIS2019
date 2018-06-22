﻿CREATE TABLE [MANH].[DO_TYPE] (
    [DO_TYPE]      SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_DO_TYPE] PRIMARY KEY CLUSTERED ([DO_TYPE] ASC)
);

