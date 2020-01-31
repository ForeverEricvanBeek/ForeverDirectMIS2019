CREATE TABLE [DM].[F_OF] (
    [DateKey]              BIGINT        NOT NULL,
    [D_OLPN_Skey]          BIGINT        NOT NULL,
    [D_Order_Skey]         BIGINT        NOT NULL,
    [D_OF_Issues_Skey]     BIGINT        NOT NULL,
    [D_OF_Complaints_Skey] BIGINT        NOT NULL,
    [D_Pickers_Skey]       BIGINT        NOT NULL,
    [D_Facility_Skey]      BIGINT        NOT NULL,
    [D_Transporter_Skey]   BIGINT        NOT NULL,
    [D_Customer_Skey]      BIGINT        NOT NULL,
    [Number_Of_Errors]     INT           NULL,
    [Number_Of_Picks]      INT           NULL,
    [InsertDateTime]       DATETIME2 (7) NULL,
    [UpdateDateTime]       DATETIME2 (7) NULL,
    [BatchID]              BIGINT        NOT NULL,
    [ProcessLogID]         BIGINT        NULL
);

