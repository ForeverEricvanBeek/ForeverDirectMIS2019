CREATE TABLE [MFV].[Machine] (
    [MachineID]             INT           NOT NULL,
    [MachineName]           VARCHAR (255) NULL,
    [Type]                  VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED ([MachineID] ASC)
);

