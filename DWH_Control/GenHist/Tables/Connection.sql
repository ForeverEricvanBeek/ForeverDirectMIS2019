CREATE TABLE [GenHist].[Connection] (
    [ConnectionID]        SMALLINT        NOT NULL,
    [Name]                NVARCHAR (30)   NOT NULL,
    [Type]                NVARCHAR (100)  NOT NULL,
    [ConnectionString]    NVARCHAR (300)  NOT NULL,
    [Options]             NVARCHAR (1000) NULL,
    [IsActive]            BIT             CONSTRAINT [DF__Connectio__IsAct__3B40CD36] DEFAULT ((1)) NOT NULL,
    [IsProjectConnection] BIT             CONSTRAINT [DF__Connectio__IsPro__3C34F16F] DEFAULT ((1)) NOT NULL,
    [Generate]            BIT             CONSTRAINT [DF__Connectio__Gener__3D2915A8] DEFAULT ((1)) NOT NULL,
    [LoadDate]            DATETIME2 (0)   CONSTRAINT [DF__Connectio__LoadD__3E1D39E1] DEFAULT (getdate()) NULL
);

