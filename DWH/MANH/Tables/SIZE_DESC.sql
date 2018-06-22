CREATE TABLE [MANH].[SIZE_DESC] (
    [SIZE_RANGE_CODE]          NVARCHAR (4)  NOT NULL,
    [SIZE_REL_POSN_IN_TABLE]   NVARCHAR (2)  NOT NULL,
    [SIZE_DESC]                NVARCHAR (15) NULL,
    [CREATED_SOURCE_TYPE]      INT           NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT           NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [TC_COMPANY_ID]            INT           NOT NULL,
    [SIZE_DESC_ID]             INT           NOT NULL,
    [HIBERNATE_VERSION]        INT           NOT NULL,
    [Eff_Date]                 DATE          NOT NULL,
    [End_Date]                 DATE          NULL,
    [ActInd]                   CHAR (1)      NULL,
    [IsDeleted]                CHAR (1)      NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_SIZE_DESC] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SIZE_DESC_ID] ASC)
);

