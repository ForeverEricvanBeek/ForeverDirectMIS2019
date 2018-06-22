CREATE TABLE [MANH].[ILM_YARD_ACTIVITY] (
    [ACTIVITY_ID]      INT           NOT NULL,
    [COMPANY_ID]       INT           NOT NULL,
    [APPOINTMENT_ID]   INT           NOT NULL,
    [EQUIPMENT_ID1]    INT           NOT NULL,
    [ACTIVITY_TYPE]    INT           NOT NULL,
    [ACTIVITY_SOURCE]  NVARCHAR (32) NOT NULL,
    [ACTIVITY_DTTM]    DATETIME2 (7) NOT NULL,
    [DRIVER_ID]        INT           NULL,
    [EQUIPMENT_ID2]    INT           NULL,
    [TASK_ID]          INT           NULL,
    [LOCATION_ID]      INT           NULL,
    [NO_OF_PALLETS]    INT           NULL,
    [EQUIP_INS_STATUS] INT           NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_MANH_ILM_YARD_ACTIVITY] PRIMARY KEY CLUSTERED ([ACTIVITY_ID] ASC)
);

