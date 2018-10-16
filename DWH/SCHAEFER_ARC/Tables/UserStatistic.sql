CREATE TABLE [SCHAEFER_ARC].[UserStatistic] (
    [PickerID]     NVARCHAR (50) NOT NULL,
    [Status]       SMALLINT      NULL,
    [Lane]         SMALLINT      NULL,
    [Type]         SMALLINT      NULL,
    [LoggedIn]     NVARCHAR (50) NOT NULL,
    [LoggedOut]    NVARCHAR (50) NULL,
    [Empty]        NVARCHAR (50) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_UserStatistic] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LoggedIn] ASC, [PickerID] ASC) ON [DWH_SCHAEFER_ARC]
) ON [DWH_SCHAEFER_ARC];

