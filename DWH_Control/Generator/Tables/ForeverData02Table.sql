CREATE TABLE [Generator].[ForeverData02Table] (
    [DatamartTableID]    SMALLINT        IDENTITY (1, 1) NOT NULL,
    [DWHConnection]      NVARCHAR (50)   NOT NULL,
    [DWHSchema]          NVARCHAR (128)  NOT NULL,
    [DWHTable]           NVARCHAR (128)  NOT NULL,
    [SourceType]         NVARCHAR (128)  NOT NULL,
    [TableType]          NVARCHAR (1)    NOT NULL,
    [DatamartConnection] NVARCHAR (50)   NOT NULL,
    [DatamartSchema]     NVARCHAR (128)  NOT NULL,
    [DatamartTable]      NVARCHAR (128)  NOT NULL,
    [LoadingType]        NVARCHAR (8)    NOT NULL,
    [Options]            NVARCHAR (1000) NULL,
    [Generate]           BIT             NOT NULL,
    [IsActive]           BIT             NOT NULL
);



