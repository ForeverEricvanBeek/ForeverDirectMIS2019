







CREATE VIEW [FDV].[VW_D_Complaint]
AS

SELECT        

	   [Complaint_ID]
      ,[Complaint_Datum]
      ,[Complaint_Pos]
      ,[Complaint_Order]
      ,[Complaint_Complaint]
      ,[Complaint_Details]
      ,[Complaint_ItemOrdered]
      ,[Complaint_ItemReceived]
      ,[Complaint_QuantityOrdered]
      ,[Complaint_QuantityReceived]
      ,[Complaint_Number]
      ,[Complaint_Facility]
      ,[Complaint_Olpn]
      ,[Complaint_Customer]
      ,[Complaint_ItemOrderedReported]
      ,[Complaint_ItemReceivedReported]
      ,[Complaint_BatchOrdered]
      ,[Complaint_CreditNote]
      ,[Complaint_ServiceOrder]
      ,[Complaint_CarrierDamage]
      ,[Complaint_TrackandTrace]
      ,[Complaint_CustomerServiceOperator]
      ,[Complaint_Conterminator]
      ,[Complaint_PosOrig]
      ,[Complaint_OrderOrig]
      ,[Complaint_TrackandTraceOrig]
      ,[Complaint_ItemOrderedOrig]
      ,[Complaint_Orig]
      ,[Complaint_Checked]
      ,[Complaint_Incomplete]
      ,[Complaint_CreatedDate]
      ,[Complaint_CreatedBy]
      ,[Complaint_UpdatedDate]
      ,[Complaint_UpdatedBy]

 FROM [WEB].[Complaint]
	 WHERE ActInd = 'Y'
			AND IsDeleted = 'N'
UNION ALL

SELECT        '-1', NULL, NULL,NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL