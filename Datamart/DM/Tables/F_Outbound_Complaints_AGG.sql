CREATE TABLE [DM].[F_Outbound_Complaints_AGG] (
    [Yearkey]                   SMALLINT       NULL,
    [Monthkey]                  TINYINT        NULL,
    [WeekKey]                   TINYINT        NULL,
    [Country_Code]              NVARCHAR (16)  NOT NULL,
    [Country_Name]              NVARCHAR (50)  NOT NULL,
    [Transporter_Name]          NVARCHAR (100) NULL,
    [Transporter_Ship_Via_Code] NVARCHAR (4)   NOT NULL,
    [OF_Complaints_Error]       NVARCHAR (50)  NULL,
    [ORDERS]                    INT            NULL,
    [LINES]                     INT            NULL,
    [PARCELS]                   INT            NULL,
    [COMPLAINT_INDIVIDUAL]      INT            NULL,
    [COMPLAINT_ORDER]           INT            NULL,
    [COMPLAINT_PARCEL]          INT            NULL,
    [COMPLAINT_ITEM]            INT            NOT NULL
);




GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_F_Outbound_Complaints_AGG]
    ON [DM].[F_Outbound_Complaints_AGG];

