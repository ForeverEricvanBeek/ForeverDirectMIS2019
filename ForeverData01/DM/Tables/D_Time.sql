CREATE TABLE [DM].[D_Time] (
    [timekey]             SMALLINT NOT NULL,
    [Hour of Day (24)]    TINYINT  NULL,
    [Hour of Day (12)]    TINYINT  NULL,
    [Meridien]            CHAR (2) NULL,
    [Minute of Hour]      TINYINT  NULL,
    [Half Hour]           TINYINT  NULL,
    [Half Hour of Day]    TINYINT  NULL,
    [Quarter Hour]        TINYINT  NULL,
    [Quarter Hour of Day] TINYINT  NULL,
    [Time String (24)]    CHAR (5) NULL,
    [Time String (12)]    CHAR (5) NULL,
    CONSTRAINT [PK_dTime_timekey] PRIMARY KEY CLUSTERED ([timekey] ASC)
);

