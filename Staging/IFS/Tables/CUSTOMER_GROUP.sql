﻿CREATE TABLE [IFS].[CUSTOMER_GROUP] (
    [CUST_GRP]     NVARCHAR (10)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (35)   NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL
);

