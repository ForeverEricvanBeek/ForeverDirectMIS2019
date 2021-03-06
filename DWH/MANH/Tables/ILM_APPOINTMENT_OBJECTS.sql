﻿CREATE TABLE [MANH].[ILM_APPOINTMENT_OBJECTS] (
    [ID]                INT           NOT NULL,
    [APPT_OBJ_TYPE]     SMALLINT      NOT NULL,
    [APPT_OBJ_ID]       INT           NOT NULL,
    [COMPANY_ID]        INT           NOT NULL,
    [APPOINTMENT_ID]    INT           NOT NULL,
    [STOP_SEQ]          SMALLINT      NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [CREATED_DTTM]      DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_ILM_APPOINTMENT_OBJECTS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



