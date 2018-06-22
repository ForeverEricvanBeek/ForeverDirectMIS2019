CREATE TABLE [Generator].[Connection] (
    [ConnectionID]        SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (30)   NOT NULL,
    [Type]                NVARCHAR (100)  NOT NULL,
    [ConnectionString]    NVARCHAR (300)  NOT NULL,
    [Options]             NVARCHAR (1000) NULL,
    [IsActive]            BIT             DEFAULT ((1)) NOT NULL,
    [IsProjectConnection] BIT             DEFAULT ((1)) NOT NULL,
    [Generate]            BIT             DEFAULT ((1)) NOT NULL
);





