CREATE TABLE [TRANS].[PN_UPD_LOOKUP] (
    [OLPN]         VARCHAR (50) NOT NULL,
    [NEW_REF]      VARCHAR (50) NOT NULL,
    [OLD_REF]      VARCHAR (50) NOT NULL,
    [POS_NR]       VARCHAR (50) NOT NULL,
    [Column 4]     VARCHAR (50) NULL,
    [Eff_Date]     DATE         NOT NULL,
    [End_Date]     DATE         NULL,
    [ActInd]       CHAR (1)     NULL,
    [IsDeleted]    CHAR (1)     NULL,
    [BatchID]      BIGINT       NULL,
    [ProcessLogID] BIGINT       NULL,
    CONSTRAINT [PK_PN_UPD_LOOKUP] PRIMARY KEY CLUSTERED ([OLPN] ASC, [NEW_REF] ASC, [OLD_REF] ASC, [POS_NR] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





