CREATE TABLE [WEB].[Transporter_Status] (
    [Carrier]      NVARCHAR (50) NOT NULL,
    [Ship_Via]     NVARCHAR (50) NOT NULL,
    [Status]       NVARCHAR (50) NOT NULL,
    [Description]  NVARCHAR (50) NULL,
    [Lead_Time]    TINYINT       NULL,
    [Sort]         TINYINT       NULL,
    [Category]     NVARCHAR (1)  NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_Transporter_Status] PRIMARY KEY CLUSTERED ([Carrier] ASC, [Ship_Via] ASC, [Status] ASC)
);

