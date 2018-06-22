﻿CREATE TABLE [MANH].[ILM_APPOINTMENT_STATUS] (
    [APPT_STATUS_CODE] SMALLINT      NOT NULL,
    [DESCRIPTION]      NVARCHAR (50) NOT NULL,
    [Eff_Date]         DATE          NOT NULL,
    [End_Date]         DATE          NULL,
    [ActInd]           CHAR (1)      NULL,
    [IsDeleted]        CHAR (1)      NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_MANH_ILM_APPOINTMENT_STATUS] PRIMARY KEY CLUSTERED ([APPT_STATUS_CODE] ASC, [Eff_Date] ASC)
);

