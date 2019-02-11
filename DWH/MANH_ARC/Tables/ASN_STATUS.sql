CREATE TABLE [MANH_ARC].[ASN_STATUS] (
    [ASN_STATUS]   SMALLINT      NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_ASN_STATUS] PRIMARY KEY CLUSTERED ([ASN_STATUS] ASC, [Eff_Date] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





