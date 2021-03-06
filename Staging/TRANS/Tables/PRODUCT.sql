﻿CREATE TABLE [TRANS].[PRODUCT] (
    [PRODUCT_ID]       INT            NOT NULL,
    [FORWARDER_ID]     INT            NULL,
    [SERVICE_ID]       INT            NULL,
    [PRODUCT_CODE]     VARCHAR (20)   NULL,
    [PRODUCT_CODE_EXT] VARCHAR (50)   NULL,
    [PRODUCT_NAME]     NVARCHAR (100) NULL,
    [CREATED]          DATETIME       NULL,
    [ENABLED]          BIT            NULL,
    [DESCRIPTION]      VARCHAR (200)  NULL,
    [IS_DOMESTIC]      BIT            NULL,
    [IS_BENELUX]       BIT            NULL,
    [IS_EU]            BIT            NULL,
    [IS_WORLD]         BIT            NULL,
    [IS_DOC]           BIT            NULL,
    [IS_REMBOURS]      BIT            NULL,
    [WITH_DEPOT]       BIT            NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED ([PRODUCT_ID] ASC)
);

