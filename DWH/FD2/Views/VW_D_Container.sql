




CREATE VIEW [FD2].[VW_D_Container]
AS

 
	 SELECT		
				  CNTR_TYPE_ID as  Container_ID 
				, CNTR_SIZE as Container_Size
				, CNTR_DESC as Container_Description
				, convert(int,MAX_CNTR_VOL) as Max_Container_Volume
				, convert(nvarchar(10) ,EMPTY_CNTR_WT) as Empty_Container_Weight
				, convert(int,LEN) as Container_Length
				, convert(int,WIDTH) as Container_Width
				, convert(int,HT) as Container_Height
				
	  FROM  [MANH].[CNTR_TYPE] 
	
	  WHERE ActInd = 'Y'
UNION ALL
SELECT -1, NULL, NULL, NULL, NULL, NULL,NULL, NULL