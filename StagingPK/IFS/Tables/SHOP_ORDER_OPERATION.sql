﻿CREATE TABLE [IFS].[SHOP_ORDER_OPERATION] (
    [ORDER_NO]     NVARCHAR (12) NOT NULL,
    [RELEASE_NO]   NVARCHAR (4)  NOT NULL,
    [SEQUENCE_NO]  NVARCHAR (4)  NOT NULL,
    [OPERATION_NO] INT           NOT NULL,
    [OBJVERSION]   BIGINT        NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    [Issue]        TINYINT       NULL,
    CONSTRAINT [PK_SHOP_ORDER_OPERATION] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [RELEASE_NO] ASC, [SEQUENCE_NO] ASC, [OPERATION_NO] ASC)
);

