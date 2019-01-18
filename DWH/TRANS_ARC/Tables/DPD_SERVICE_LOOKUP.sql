CREATE TABLE [TRANS_ARC].[DPD_SERVICE_LOOKUP] (
    [SERVICE_NR]             VARCHAR (20)  NULL,
    [DESCRIPTION]            VARCHAR (200) NULL,
    [NORMAL_PARCEL]          BIT           NULL,
    [SMALL_PARCEL]           BIT           NULL,
    [EXPRESS]                BIT           NULL,
    [HAZ]                    BIT           NULL,
    [SA]                     BIT           NULL,
    [EX_WORKS]               BIT           NULL,
    [SWAP]                   BIT           NULL,
    [COD]                    BIT           NULL,
    [COLLECTION_ON_DELIVERY] BIT           NULL,
    [SWAP_BACK]              BIT           NULL,
    [SERVICE]                BIT           NULL,
    [PARCEL_LETTER]          BIT           NULL,
    [GUARANTEE]              BIT           NULL,
    [NO_POST_OFFICE]         BIT           NULL,
    [Eff_Date]               DATE          NOT NULL,
    [End_Date]               DATE          NULL,
    [ActInd]                 CHAR (1)      NULL,
    [IsDeleted]              CHAR (1)      NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL
)
WITH (DATA_COMPRESSION = PAGE);



