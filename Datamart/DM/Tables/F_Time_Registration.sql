CREATE TABLE [DM].[F_Time_Registration] (
    [DateKey]                        BIGINT        NOT NULL,
    [D_Employee_Skey]                BIGINT        NOT NULL,
    [D_Department_Skey]              SMALLINT      NOT NULL,
    [D_HourType_Skey]                SMALLINT      NOT NULL,
    [Number_of_Minutes]              SMALLINT      NULL,
    [Number_of_Minutes_DagNorm]      SMALLINT      NULL,
    [Number_of_Minutes_Gewerkt]      SMALLINT      NULL,
    [Number_of_Minutes_Aanwezig]     SMALLINT      NULL,
    [Number_of_Minutes_Cursus]       SMALLINT      NULL,
    [Number_of_Minutes_Feestdag]     SMALLINT      NULL,
    [Number_of_Minutes_Vakantie]     SMALLINT      NULL,
    [Number_of_Minutes_TijdvoorTijd] SMALLINT      NULL,
    [Number_of_Minutes_Overwerk110]  SMALLINT      NULL,
    [Number_of_Minutes_Overwerk130]  SMALLINT      NULL,
    [Number_of_Minutes_Overwerk145]  SMALLINT      NULL,
    [Number_of_Minutes_Overwerk150]  SMALLINT      NULL,
    [Number_of_Minutes_Overwerk200]  SMALLINT      NULL,
    [InsertDateTime]                 DATETIME2 (7) NULL,
    [UpdateDateTime]                 DATETIME2 (7) NULL,
    [BatchID]                        BIGINT        NOT NULL,
    [ProcessLogID]                   BIGINT        NULL
);




GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_F_Time_Registration]
    ON [DM].[F_Time_Registration];

