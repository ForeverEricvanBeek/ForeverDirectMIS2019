CREATE TABLE [MANH_ARC].[LOCALE] (
    [LOCALE_ID]         SMALLINT      NOT NULL,
    [LOCALE_NAME]       NVARCHAR (50) NOT NULL,
    [LANGUAGE_ID]       SMALLINT      NOT NULL,
    [COUNTRY_CODE]      NVARCHAR (4)  NOT NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [CREATED_DTTM]      DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_LOCALE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LOCALE_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







