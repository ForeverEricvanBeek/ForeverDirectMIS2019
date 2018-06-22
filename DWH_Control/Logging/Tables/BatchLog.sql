CREATE TABLE [Logging].[BatchLog] (
    [BatchID]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [StartDateTime]    DATETIME2 (7)  CONSTRAINT [DF__BatchLog__StartD__4316F928] DEFAULT (sysdatetime()) NOT NULL,
    [EndDateTime]      DATETIME2 (7)  NULL,
    [Status]           NCHAR (1)      NOT NULL,
    [BatchType]        NVARCHAR (255) NOT NULL,
    [StagingProcessed] BIT            CONSTRAINT [DF__BatchLog__Stagin__440B1D61] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BatchLog] PRIMARY KEY CLUSTERED ([BatchID] ASC),
    CONSTRAINT [CK_BatchLogStatus] CHECK ([Status]='R' OR [Status]='F' OR [Status]='S')
);

