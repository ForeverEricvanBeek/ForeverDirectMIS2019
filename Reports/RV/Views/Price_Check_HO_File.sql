

 create view [RV].[Price_Check_HO_File] as
  
  
  SELECT  ISNULL(LM.[Part_NO],'N-A')			Part_NO_LP
         ,ISNULL(PL.Part_NO,'N-A')				Part_NO_NOW
         ,ISNULL(LM.[Price_List],'N-A')			Price_List_LP
		 ,ISNULL(PL.[Price_List],'N-A')			Price_List_NOW
         ,ISNULL(LM.[Value],999)				VAL_LP
	     ,ISNULL(PL.Value,998)					VAL_NOW
	     ,CASE WHEN ISNULL(LM.[Value],999) <> ISNULL(PL.[Value],999) THEN 1 ELSE 0 END AS DIFF
  FROM [$(ForeverAdhoc)].[dbo].[D_Price_List_HO_last_Period] LM
  LEFT JOIN [$(ForeverAdhoc)].[dbo].[D_Price_List_HO] PL
  ON LM.Part_NO = PL.Part_NO
  AND
  LM.Price_List = PL.Price_List
  WHERE CASE WHEN ISNULL(LM.[Value],998) <> ISNULL(PL.[Value],999) THEN 1 ELSE 0 END = 1
  
  UNION ALL
  
  SELECT  ISNULL(LM.[Part_NO],'N-A')			Part_NO_LP
         ,ISNULL(PL.Part_NO,'N-A')				Part_NO_NOW
         ,ISNULL(LM.[Price_List],'N-A')			Price_List_LP
		 ,ISNULL(PL.[Price_List],'N-A')			Price_List_NOW
         ,ISNULL(LM.[Value],999)				VAL_LP
	     ,ISNULL(PL.Value,998)					VAL_NOW
	     ,CASE WHEN ISNULL(PL.[Value],998) <> ISNULL(LM.[Value],999) THEN 1 ELSE 0 END AS DIFF
  FROM [$(ForeverAdhoc)].[dbo].[D_Price_List_HO_last_Period] LM
  RIGHT JOIN [$(ForeverAdhoc)].[dbo].[D_Price_List_HO] PL
  ON LM.Part_NO = PL.Part_NO
  AND
  LM.Price_List = PL.Price_List
  WHERE CASE WHEN ISNULL(PL.[Value],998) <> ISNULL(LM.[Value],999) THEN 1 ELSE 0 END = 1