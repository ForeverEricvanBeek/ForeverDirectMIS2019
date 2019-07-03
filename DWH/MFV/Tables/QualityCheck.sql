﻿CREATE TABLE [MFV].[QualityCheck] (
    [ID]                    INT           NOT NULL,
    [ILPNnumber]            VARCHAR (255) NULL,
    [MES_UDEID]             INT           NULL,
    [MachineID]             INT           NULL,
    [OrderID]               INT           NULL,
    [ArticleID]             INT           NULL,
    [LotID]                 VARCHAR (255) NULL,
    [Quantity]              INT           NULL,
    [Timestamp]             DATETIME      NULL,
    [Registered]            DATETIME      NULL,
    [Check_WO]              INT           NULL,
    [Check_SKU]             INT           NULL,
    [Check_LotID]           INT           NULL,
    [Check_ExpirDate]       INT           NULL,
    [Check_Quantity]        INT           NULL,
    [Quantity_Fault]        INT           NULL,
    [PickLocation]          VARCHAR (255) NULL,
    [Comment]               VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NOT NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_QualityCheck] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

