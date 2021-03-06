﻿CREATE TABLE [TRANS].[PROJECT] (
    [PROJECT_ID]   INT            NOT NULL,
    [DSN_ID]       INT            NULL,
    [PROJECT_CODE] VARCHAR (20)   NOT NULL,
    [PROJECT_NAME] NVARCHAR (100) NULL,
    [CREATED]      DATETIME2 (7)  DEFAULT (getdate()) NULL,
    [DESCRIPTION]  VARCHAR (200)  NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_PROJECT] PRIMARY KEY CLUSTERED ([PROJECT_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





