CREATE TABLE [MANH_ARC].[LANGUAGE] (
    [LANGUAGE_ID]     SMALLINT      NOT NULL,
    [DESCRIPTION]     NVARCHAR (50) NOT NULL,
    [LANGUAGE_SUFFIX] NVARCHAR (8)  NOT NULL,
    [Eff_Date]        DATE          NOT NULL,
    [End_Date]        DATE          NULL,
    [ActInd]          CHAR (1)      NULL,
    [IsDeleted]       CHAR (1)      NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_MANH_LANGUAGE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LANGUAGE_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





