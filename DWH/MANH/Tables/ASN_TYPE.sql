CREATE TABLE [MANH].[ASN_TYPE] (
    [ASN_TYPE]     SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_ASN_TYPE] PRIMARY KEY CLUSTERED ([ASN_TYPE] ASC, [Eff_Date] ASC)
);

