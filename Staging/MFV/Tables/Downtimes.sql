CREATE TABLE [MFV].[Downtimes] (
    [ID]                    BIGINT         NOT NULL,
    [Ted_ID]                INT            NULL,
    [MachineID]             INT            NULL,
    [OrderID]               INT            NULL,
    [ShiftID]               INT            NULL,
    [Starttime]             DATETIME       NULL,
    [Endtime]               DATETIME       NULL,
    [Reason1]               VARCHAR (255)  NULL,
    [Reason2]               VARCHAR (255)  NULL,
    [Reason3]               VARCHAR (255)  NULL,
    [Reason4]               VARCHAR (255)  NULL,
    [Category]              VARCHAR (255)  NULL,
    [DowntimeStatus]        VARCHAR (255)  NULL,
    [Comment]               VARCHAR (8000) NULL,
    [ModificationTimestamp] DATETIME       NULL,
    [BatchID]               BIGINT         NULL,
    [ProcessLogID]          BIGINT         NULL,
    CONSTRAINT [PK_Downtimes] PRIMARY KEY CLUSTERED ([ID] ASC)
);

