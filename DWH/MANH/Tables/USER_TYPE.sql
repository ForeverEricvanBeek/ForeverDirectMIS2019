CREATE TABLE [MANH].[USER_TYPE] (
    [USER_TYPE_ID] SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [ABBREVIATION] NVARCHAR (4)  NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_USER_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [USER_TYPE_ID] ASC)
);

