CREATE TABLE [WEB].[Transporter_Manual] (
    [Transporter_Code]          NVARCHAR (10)  NOT NULL,
    [Transporter_New]           NVARCHAR (10)  NOT NULL,
    [Transporter_Name]          NVARCHAR (100) NULL,
    [Transporter_Ship_Via_Code] NVARCHAR (4)   NOT NULL,
    [BatchID]                   BIGINT         NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_Transporter_Manual] PRIMARY KEY CLUSTERED ([Transporter_Code] ASC, [Transporter_New] ASC, [Transporter_Ship_Via_Code] ASC)
);

