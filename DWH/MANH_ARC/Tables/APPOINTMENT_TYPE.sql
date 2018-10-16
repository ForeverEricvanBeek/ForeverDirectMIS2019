CREATE TABLE [MANH_ARC].[APPOINTMENT_TYPE] (
    [APPOINTMENT_TYPE] NVARCHAR (3)  NOT NULL,
    [DESCRIPTION]      NVARCHAR (50) NOT NULL,
    [Eff_Date]         DATE          NOT NULL,
    [End_Date]         DATE          NULL,
    [ActInd]           CHAR (1)      NULL,
    [IsDeleted]        CHAR (1)      NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_MANH_APPOINTMENT_TYPE] PRIMARY KEY CLUSTERED ([APPOINTMENT_TYPE] ASC, [Eff_Date] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

