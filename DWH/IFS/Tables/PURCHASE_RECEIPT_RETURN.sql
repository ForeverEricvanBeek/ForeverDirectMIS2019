﻿CREATE TABLE [IFS].[PURCHASE_RECEIPT_RETURN](
	[ORDER_NO] [nvarchar](12) NOT NULL,
	[LINE_NO] [nvarchar](4) NOT NULL,
	[RELEASE_NO] [nvarchar](4) NOT NULL,
	[RECEIPT_NO] [int] NOT NULL,
	[LOT_BATCH_NO] [nvarchar](20) NOT NULL,
	[SERIAL_NO] [nvarchar](50) NOT NULL,
	[RETURN_REASON] [nvarchar](8) NOT NULL,
	[RECEIPT_RETURN_TYPE] [nvarchar](4000) NULL,
	[RECEIPT_RETURN_TYPE_DB] [nvarchar](20) NOT NULL,
	[QTY_RETURNED] [int] NULL,
	[CATCH_QTY_RETURNED] [int] NULL,
	[INV_QTY_RETURNED] [int] NULL,
	[OBJID] [nvarchar](4000) NULL,
	[OBJVERSION] [nvarchar](2000) NULL,
	[Eff_Date] [date] NOT NULL,
	[End_Date] [date] NULL,
	[ActInd] [char](1) NULL,
	[IsDeleted] [char](1) NULL,
	[BatchID] [bigint] NULL,
	[ProcessLogID] [bigint] NULL,
 CONSTRAINT [PK_PURCHASE_RECEIPT_RETURN] PRIMARY KEY CLUSTERED 
(
	[ORDER_NO] ASC,
	[LINE_NO] ASC,
	[RELEASE_NO] ASC,
	[RECEIPT_NO] ASC,
	[LOT_BATCH_NO] ASC,
	[SERIAL_NO] ASC,
	[RECEIPT_RETURN_TYPE_DB] ASC,
	[RETURN_REASON] ASC,
	[Eff_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DWH_IFS]
) ON [DWH_IFS]
GO


