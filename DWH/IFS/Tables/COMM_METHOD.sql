﻿CREATE TABLE [IFS].[COMM_METHOD] (
    [IDENTITY]        NVARCHAR (20)   NOT NULL,
    [COMM_ID]         INT             NOT NULL,
    [PARTY_TYPE]      NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]   NVARCHAR (20)   NOT NULL,
    [VALUE]           NVARCHAR (200)  NULL,
    [DESCRIPTION]     NVARCHAR (200)  NULL,
    [VALID_FROM]      DATETIME2 (7)   NULL,
    [VALID_TO]        DATETIME2 (7)   NULL,
    [METHOD_DEFAULT]  NVARCHAR (5)    NULL,
    [ADDRESS_DEFAULT] NVARCHAR (5)    NULL,
    [NAME]            NVARCHAR (100)  NULL,
    [METHOD_ID]       NVARCHAR (4000) NULL,
    [METHOD_ID_DB]    NVARCHAR (20)   NULL,
    [ADDRESS_ID]      NVARCHAR (50)   NULL,
    [OBJID]           NVARCHAR (4000) NULL,
    [OBJVERSION]      NVARCHAR (2000) NULL,
    [Eff_Date]        DATE            NOT NULL,
    [End_Date]        DATE            NULL,
    [ActInd]          CHAR (1)        NULL,
    [IsDeleted]       CHAR (1)        NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_COMM_METHOD] PRIMARY KEY CLUSTERED ([PARTY_TYPE_DB] ASC, [IDENTITY] ASC, [COMM_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];
