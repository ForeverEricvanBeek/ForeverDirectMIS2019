﻿CREATE TABLE [MANH_ARC].[DO_WMPROCESSINFO] (
    [ORDER_ID]     INT             NOT NULL,
    [REF_FIELD_1]  NVARCHAR (25)   NULL,
    [REF_FIELD_2]  NVARCHAR (25)   NULL,
    [REF_FIELD_3]  NVARCHAR (25)   NULL,
    [REF_FIELD_4]  NVARCHAR (25)   NULL,
    [REF_FIELD_5]  NVARCHAR (25)   NULL,
    [REF_FIELD_6]  NVARCHAR (25)   NULL,
    [REF_FIELD_7]  NVARCHAR (25)   NULL,
    [REF_FIELD_8]  NVARCHAR (25)   NULL,
    [REF_FIELD_9]  NVARCHAR (25)   NULL,
    [REF_FIELD_10] NVARCHAR (25)   NULL,
    [REF_NUM_1]    DECIMAL (13, 5) NULL,
    [REF_NUM_2]    DECIMAL (13, 5) NULL,
    [REF_NUM_3]    DECIMAL (13, 5) NULL,
    [REF_NUM_4]    DECIMAL (13, 5) NULL,
    [REF_NUM_5]    DECIMAL (13, 5) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_MANH_DO_WMPROCESSINFO] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ORDER_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





