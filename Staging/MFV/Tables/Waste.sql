CREATE TABLE [MFV].[Waste] (
    [ID]                    INT            NOT NULL,
    [OrderID]               INT            NULL,
    [MachineID]             INT            NULL,
    [ShiftID]               INT            NULL,
    [Timestamp]             DATETIME       NULL,
    [Quantity]              INT            NULL,
    [Reason1]               VARCHAR (255)  NULL,
    [Reason2]               VARCHAR (255)  NULL,
    [Reason3]               VARCHAR (255)  NULL,
    [Reason4]               VARCHAR (255)  NULL,
    [Comment]               VARCHAR (8000) NULL,
    [ModificationTimestamp] DATETIME       NULL,
    [BatchID]               BIGINT         NULL,
    [ProcessLogID]          BIGINT         NULL,
    CONSTRAINT [PK_Waste] PRIMARY KEY CLUSTERED ([ID] ASC)
);

