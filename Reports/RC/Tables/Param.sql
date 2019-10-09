CREATE TABLE [RC].[Param] (
    [Param_ID]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [Param_RequestID]    BIGINT          NULL,
    [Param_Name]         NVARCHAR (256)  NULL,
    [Param_Value]        NVARCHAR (256)  NULL,
    [Param_FriendlyName] NVARCHAR (256)  NULL,
    [Param_Type]         NVARCHAR (256)  NULL,
    [Param_Description]  NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Param] PRIMARY KEY CLUSTERED ([Param_ID] ASC)
);



