



CREATE VIEW [FDV].[VW_D_Pack_QC]
as
WITH CTE_INIT as
(SELECT
  LP.TC_LPN_ID										AS OLPN_ID
  ,OD.TC_ORDER_ID									AS Order_ID
  ,LP.CONTAINER_SIZE								AS BOX
  , X.Lane											AS Lane_ID
  , X.QC_Action										AS QC_Action
  , X.PackUser										AS [user]
  , X.Date											AS Date
  , ISNULL(X.TimeIn,'2999-01-01')					AS TimeIn
  , X.TimeOut										AS TimeOut
  , X.Datum											AS DatumQCScan
  , X.Tijd											AS TijdQCScan
  , X.Status										AS Status
  , X.Expired										AS ExpirationIssue
  , X.iLPNStatus									AS iLPNStatusIssue
  , X.iLPNLocation									AS iLPNLocationIssue
  , X.Overpack										AS OverpackIssue
  , X.Unknown										AS UnknownIssue
  , X.Item											AS ItemIssue
  , X.Weight										AS WeightIssue
  , X.Special_Instr									AS Special_Instr
  , cast(CASE when OD.REF_FIELD_10 ='001' then '1'
  		else '0' end as nvarchar (25))				AS Cold_Protection
  , X.OLPNWeightMin									AS MinWeight
  , X.OLPNWeightMax									AS MaxWeight
  , X.OLPNWeight									AS Weight
  , X.Diff_Weight									AS Diff_Weight
  , ISNULL(X.OF_Issues_Error,'No Reason')			AS OF_Issues_Error
  , X.OF_Issues_Comments							AS OF_Issues_Comments	
 							
FROM		MANH.ORDERS OD
INNER JOIN	MANH.LPN_OUTBOUND LP
ON			LP.ORDER_ID = OD.ORDER_ID
AND			LP.ActInd = 'Y'

LEFT JOIN	(
	SELECT
	  SR.OLPN																							AS OLPN
	  , SR.Lane																							AS Lane
	  , CASE WHEN SR.Type = 1 THEN 'Repack' WHEN SR.Type = 2 THEN 'QC' ELSE 'Unknown' END				AS QC_Action
	  , CAST(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeIn,13,0,':'),11,0,':'),9,0,' '))	as date)		AS Date
	  , CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeIn,13,0,':'),11,0,':'),9,0,' '))						AS TimeIn
	  , CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' '))						AS TimeOut
	  , QS.OLPNEXPIRATIONDATE_ISSUE																		AS Expired
	  , QS.OLPNILPNLOCATION_ISSUE																		AS iLPNLocation
	  , QS.OLPNILPNSTATUS_ISSUE																			AS iLPNStatus
	  , QS.OLPNOVERPACK_ISSUE																			AS Overpack
	  , QS.OLPNUNKNOWN_ISSUE																			AS Unknown
	  , QS.OLPNWRONGITEMPICK_ISSUE																		AS Item
	  , QS.OLPNWeightIssue																				AS Weight
	  , QS.SPECIALINSTRUCTIONS																			AS Special_Instr
	  , CAST(QS.Created_Date AS DATE)																	AS Datum
	  , CAST(QS.Created_Date AS TIME)																	AS Tijd
	  , SUBSTRING(QS.Created_By, 15,LEN(QS.Created_By)-14)												AS Operator
	  , QS.OLPNStatus																					AS Status
	  , QS.OLPNWeightMin																				AS OLPNWeightMin
	  , QS.OLPNWeightMax																				AS OLPNWeightMax
	  , QS.OLPNWeight																					AS OLPNWeight
	  , case when QS.OLPNWeight < QS.OLPNWeightMin	then QS.OLPNWeight-QS.OLPNWeightMin
	         when QS.OLPNWeight > QS.OLPNWeightMax	then QS.OLPNWeight-QS.OLPNWeightMax
			 --when QS.OLPNWeight is null				then NULL
													else '0'									
	         end 																						AS Diff_Weight
	  , substring(SR.[User],2,6)																		AS PackUser
	  ,CASE
		WHEN OI.Error1 IS NOT NULL THEN 
			CASE
				WHEN OI.Error2 LIKE	'Damage%' 
				THEN 'Damage'
				ELSE OI.Error1
				END + 
			CASE 
				WHEN OI.Error2 IS NOT NULL AND OI.Error2 NOT LIKE 'Damage%' THEN ' - ' + OI.Error2 
				ELSE '' 
			END 
	  END																								AS OF_Issues_Error
	  ,OI.Comments																						AS OF_Issues_Comments
	  , ROW_NUMBER() OVER (PARTITION BY SR.OLPN,SR.TimeIn ORDER BY SR.TimeIn)							AS RN
	FROM		SCHAEFER.Repack SR
	LEFT JOIN	WEB.QAScansBI QS
	ON			QS.OLPNId = SR.OLPN
	AND			QS.Created_Date >= CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeIn,13,0,':'),11,0,':'),9,0,' '))
	AND			QS.Created_Date < CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' '))
	LEFT JOIN WEB.OF_Issues OI
    ON    QS.OLPNId=OI.oLPN_Nr
	and substring(QS.Created_By,15,20)=OI.QA_operator
    AND			OI.ActInd = 'Y'
	WHERE		SR.ActInd = 'Y'
) X
ON			X.OLPN = LP.TC_LPN_ID
AND			X.RN = 1
WHERE		OD.ActInd = 'Y'
AND			OD.DO_STATUS >=140 --= 190
AND			OD.ORDER_TYPE = 'OF'
AND			OD.DSG_SHIP_VIA <> 'FD01'
AND			YEAR(OD.CREATED_DTTM) >= YEAR(GETDATE())-2)


select *
  ,case when Diff_Weight between -0.01000 and -0.0001	then		'A -'  
        when Diff_Weight between -0.02000 and -0.01000	then		'B -'  
		when Diff_Weight between -0.03000 and -0.02000	then		'C -'
		when Diff_Weight between -0.04000 and -0.03000	then		'D -'
		when Diff_Weight between 0.0001 and 0.01000		then		'A +'
		when Diff_Weight between 0.0100 and 0.02000		then		'B +'
		when Diff_Weight between 0.0200 and 0.03000		then		'C +'
		when Diff_Weight between 0.0300 and 0.04000		then		'D +'
		when Diff_Weight < -0.04000 or Diff_Weight >  0.04000 then  'Extreme'
		when Special_Instr  like 'T%'				    then        'X'
		When Cold_Protection='001'						then	    'Y'
		When Diff_Weight = 0.000						then		'Z'
		else														'Unknown'
		end															AS Categorie
From CTE_INIT
UNION ALL
SELECT '-1','-1',NULL, NULL, NULL, NULL, NULL, '2999-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL,NULL, NULL,NULL,NULL,NULL,NULL