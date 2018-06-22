CREATE TABLE [SCHAEFER].[UserStatistic] (
    [PickerID]     NVARCHAR (50) NOT NULL,
    [Status]       SMALLINT      NULL,
    [Lane]         SMALLINT      NULL,
    [Type]         SMALLINT      NULL,
    [LoggedIn]     NVARCHAR (50) NOT NULL,
    [LoggedOut]    NVARCHAR (50) NOT NULL,
    [Empty]        NVARCHAR (50) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_UserStatistic] PRIMARY KEY CLUSTERED ([PickerID] ASC, [LoggedIn] ASC)
);

