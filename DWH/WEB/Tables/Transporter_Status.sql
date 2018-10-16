CREATE TABLE [WEB].[Transporter_Status] (
    [Carrier]      NVARCHAR (50) NOT NULL,
    [Ship_Via]     NVARCHAR (50) NOT NULL,
    [Status]       NVARCHAR (50) NOT NULL,
    [Description]  NVARCHAR (50) NULL,
    [Lead_Time]    TINYINT       NULL,
    [Sort]         TINYINT       NULL,
    [Category]     NVARCHAR (1)  NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_Transporter_Status] PRIMARY KEY CLUSTERED ([Carrier] ASC, [Eff_Date] ASC, [Ship_Via] ASC, [Status] ASC) ON [DWH_WEB]
) ON [DWH_WEB];




GO
EXECUTE sp_addextendedproperty @name = N'comments', @value = N'D=Delivered,F=First Scan,P=Pickup Point', @level0type = N'SCHEMA', @level0name = N'WEB', @level1type = N'TABLE', @level1name = N'Transporter_Status', @level2type = N'COLUMN', @level2name = N'Category';

