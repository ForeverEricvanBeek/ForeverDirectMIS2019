﻿CREATE TABLE [TRANS].[INCOTERM] (
    [INCOTERM_CODE] VARCHAR (3)    NOT NULL,
    [INCOTERM_NAME] NVARCHAR (100) NULL,
    [PAYER]         CHAR (1)       NULL,
    [BatchID]       BIGINT         NULL,
    [ProcessLogID]  BIGINT         NULL,
    CONSTRAINT [PK_INCOTERM] PRIMARY KEY CLUSTERED ([INCOTERM_CODE] ASC)
);

