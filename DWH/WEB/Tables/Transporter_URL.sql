CREATE TABLE [WEB].[Transporter_URL] (
    [Ship_Via]     NVARCHAR (50)  NOT NULL,
    [Link]         NVARCHAR (150) NULL,
    [Link2]        NVARCHAR (150) NULL,
    [Zipcode]      BIT            NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_Transporter_URL] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [Ship_Via] ASC) ON [DWH_WEB]
) ON [DWH_WEB];



