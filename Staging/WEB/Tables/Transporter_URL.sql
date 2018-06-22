CREATE TABLE [WEB].[Transporter_URL] (
    [Ship_Via]     NVARCHAR (50)  NOT NULL,
    [Link]         NVARCHAR (150) NULL,
    [Link2]        NVARCHAR (150) NULL,
    [Zipcode]      BIT            NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_Transporter_URL] PRIMARY KEY CLUSTERED ([Ship_Via] ASC)
);

