
CREATE VIEW [FDV].[VW_D_Container]
AS

 
	 SELECT		
				  CNTR_TYPE_ID as  Container_ID 
				, CNTR_SIZE as Container_Size
				, CNTR_DESC as Container_Description
				, MAX_CNTR_VOL as Max_Container_Volume
				, EMPTY_CNTR_WT as Empty_Container_Weight
				, LEN as Container_Length
				, WIDTH as Container_Width
				, HT as Contrainer_Height
				
	  FROM  [MANH].[CNTR_TYPE] 
	
	  WHERE ActInd = 'Y'
UNION ALL
SELECT '-1', NULL, NULL, NULL, NULL, NULL,NULL, NULL