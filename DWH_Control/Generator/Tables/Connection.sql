CREATE TABLE [Generator].[Connection] (
    [ConnectionID]        SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (200)  NOT NULL,
    [Type]                NVARCHAR (100)  NOT NULL,
    [ConnectionString]    NVARCHAR (300)  NOT NULL,
    [Options]             NVARCHAR (1000) NULL,
    [XMLExample]          NVARCHAR (MAX)  NULL,
    [IsActive]            BIT             CONSTRAINT [DF__Connectio__IsAct__21B6055D] DEFAULT ((1)) NOT NULL,
    [IsProjectConnection] BIT             CONSTRAINT [DF__Connectio__IsPro__20C1E124] DEFAULT ((1)) NOT NULL,
    [Generate]            BIT             CONSTRAINT [DF__Connectio__Gener__22AA2996] DEFAULT ((1)) NOT NULL
);
























