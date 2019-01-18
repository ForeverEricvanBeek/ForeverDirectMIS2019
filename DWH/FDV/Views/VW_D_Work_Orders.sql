



CREATE VIEW [FDV].[VW_D_Work_Orders]
AS



WITH CTE_1 AS

(
			SELECT A.WORK_ORD_NBR As Wo_Number,
				   B.SEQ_NBR AS Line_No,
				   MAX(B.WORK_ORD_DTL_ID) As WORK_ORD_DTL_ID
			 From MANH.WORK_ORD_HDR A
			 Inner Join MANH.WORK_ORD_DTL B
				On A.WORK_ORD_NBR = B.WORK_ORD_NBR
				and A.ActInd = 'Y'
				and B.ActInd = 'Y'
			 Inner Join MANH.ITEM_CBO C
				On B.ITEM_ID = C.ITEM_ID
				   and C.ActInd = 'Y'
			 Inner Join MANH.WORK_ORD_CMNT D
				On A.WORK_ORD_NBR = D.WORK_ORD_NBR
				and D.ActInd = 'Y'
				
			GROUP BY
				A.WORK_ORD_NBR,
				B.SEQ_NBR 
)

--PLEASE NOTE THATE THE WM_VERSION IS USED TO FILTER OUT DOUBLE VALUES. IF NOT CHECKED YOU MIGHT REPORT TO HIGH VALUES FOR REQUESTED VALUES
Select A.WORK_ORD_NBR As Wo_Number,
	   B.SEQ_NBR AS Line_No,
	   B.WORK_ORD_DTL_ID as Work_Ord_Detail_Id,
       Case
         When A.STAT_CODE = 20 Then
          'RELEASED'
         When A.STAT_CODE = 10 Then
          'CREATED'
         When A.STAT_CODE = 60 Then
          'IN PROCESS'
         When A.STAT_CODE = 90 Then
          'CLOSED'
         When A.STAT_CODE = 95 Then
          'CANCELLED'
       End  Status,
       A.STAT_CODE as Status_Code,
       A.MFG_LINE As Order_Type,
       A.TRANS_INVN_TYPE As TI_Number,
       C.ITEM_NAME As SKU_Name,
	   C.ITEM_ID as SKU_Number,
       C.DESCRIPTION as SKU_Description,
       B.BACK_FLUSH_FLAG As FU_SKU,
       B.REQD_QTY As Requested_QTY,
       B.CMPL_QTY As Completed_QTY,
       B.TO_BE_PIKD_QTY As To_Be_Picked,
       B.PULLD_QTY As Picked_QTY,
       B.IN_WORK_QTY As In_Work_QTY,
       A.SCHED_START_DATE As Scheduled_Date,
       A.REF_FIELD_1 AS Scheduled_Time,
       D.CMNT as Comment,
       B.MOD_DATE_TIME As Mod_Date_Time,
       B.CREATE_DATE_TIME As Create_Date_Time,
       A.WAVE_NBR As Wave_Number
  From MANH.WORK_ORD_HDR A
 Inner Join MANH.WORK_ORD_DTL B
    On A.WORK_ORD_NBR = B.WORK_ORD_NBR
	and A.ActInd = 'Y'
	and B.ActInd = 'Y'
 Inner Join MANH.ITEM_CBO C
    On B.ITEM_ID = C.ITEM_ID
	   and C.ActInd = 'Y'
 Inner Join MANH.WORK_ORD_CMNT D
    On A.WORK_ORD_NBR = D.WORK_ORD_NBR
			 AND D.ActInd = 'Y'
 inner join CTE_1 CTE
	ON 	B.WORK_ORD_NBR = CTE.Wo_Number and  B.WORK_ORD_DTL_ID = CTE.WORK_ORD_DTL_ID
	 
	
 Group By A.WORK_ORD_NBR,
  B.SEQ_NBR,
          Case
            When A.STAT_CODE = 20 Then
             'RELEASED'
            When A.STAT_CODE = 10 Then
             'CREATED'
            When A.STAT_CODE = 60 Then
             'IN PROCESS'
            When A.STAT_CODE = 90 Then
             'CLOSED'
            When A.STAT_CODE = 95 Then
             'CANCELLED'
          End,
          A.MFG_LINE,
          A.TRANS_INVN_TYPE,
          C.ITEM_NAME,
		  C.ITEM_ID,
          C.DESCRIPTION,
          B.BACK_FLUSH_FLAG,
          B.REQD_QTY,
          B.CMPL_QTY,
          B.TO_BE_PIKD_QTY,
          B.PULLD_QTY,
          B.IN_WORK_QTY,
          A.SCHED_START_DATE,
          A.REF_FIELD_1,
          D.CMNT,
          B.MOD_DATE_TIME,
          B.CREATE_DATE_TIME,
          A.WAVE_NBR,
          A.STAT_CODE,
		  B.WORK_ORD_DTL_ID