﻿CREATE TABLE [TRANS].[EDI_INFO] (
    [EDI_INFO_ID]      INT          NOT NULL,
    [HUB_FORWARDER_ID] INT          NOT NULL,
    [HUB_DSN_ID]       INT          NOT NULL,
    [HUB_PROJECT_ID]   INT          NOT NULL,
    [BOOK_NUMBER_1]    VARCHAR (20) NULL,
    [BOOK_NUMBER_2]    VARCHAR (20) NULL,
    [PICK_COUNT]       SMALLINT     NULL,
    [EDI_NR]           INT          NULL,
    [BatchID]          BIGINT       NULL,
    [ProcessLogID]     BIGINT       NULL,
    CONSTRAINT [PK_EDI_INFO] PRIMARY KEY CLUSTERED ([EDI_INFO_ID] ASC)
);

