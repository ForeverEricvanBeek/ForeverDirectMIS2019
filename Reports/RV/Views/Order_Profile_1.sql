


CREATE VIEW [RV].[Order_Profile] AS
 --Facility
SELECT  OD.Order_Facility_Code Col1
      ,FA.Facility_Name Col2
	  ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order 
	   ,SUM(Number_Of_Units_Shipped) Units
	   ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order 
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight  OLPN_Weight
	  ,'1' AS 'Rapport_ID' 
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey
  
  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey
  
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey

  JOIN [$(ForeverData01)].[DM].[D_Facility] FA
  ON
  OD.Order_Facility_Code=FA.Facility_ID
  
  JOIN (SELECT
       OD.Order_Facility_Code Facility_Code
	  ,OD.Order_Type
      ,SUM(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month
      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
      GROUP BY OD.Order_Facility_Code
	 ,OD.Order_Type
     ,YEAR(OD.Order_Shipped_Date) 
	 ,MONTH(OD.Order_Shipped_Date) 
	 )
	 A ON A.Facility_Code=OD.Order_Facility_Code AND A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type
  
  GROUP BY OD.Order_Facility_Code
          ,OD.Order_Type
		  ,C.Year
	      ,C.MonthOfYear 
		  ,FA.Facility_Name
		  ,A.OLPN_Weight 

 UNION ALL
 --Country
 SELECT 
      CN.Country_Name Col1
	  ,OD.Order_Country_Code Col2
      ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order
	  ,SUM(Number_Of_Units_Shipped) Units
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight  OLPN_Weight
	  ,'2' AS 'Rapport_ID'
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey

  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey

  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey
  
  JOIN [$(ForeverData01)].[DM].[D_Country] CN
  ON
  OB.D_Country_Skey=CN.D_Country_Skey
  
  JOIN (SELECT
       OD.Order_Country_Code Country_Code
	   ,OD.Order_Type
      ,sum(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month
      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
      group BY OD.Order_Country_Code
	  ,OD.Order_Type
     ,YEAR(OD.Order_Shipped_Date) 
	 ,MONTH(OD.Order_Shipped_Date) 
	 )A ON A.Country_Code=OD.Order_Country_Code AND A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type
	  
  GROUP BY OD.Order_Country_Code
           ,OD.Order_Type
	       ,C.Year
	       ,C.MonthOfYear 
		   ,CN.Country_Name
		   ,A.OLPN_Weight
   
   UNION ALL
   --Country Transporter
   SELECT CN.Country_Name Col1
      ,T.Transporter_Code  Col2
	  ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order
	  ,SUM(Number_Of_Units_Shipped) Units
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight AS OLPN_Weight
	  ,'3' AS 'Rapport_ID' 
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey
    
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey

  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey

  JOIN [$(ForeverData01)].[DM].[D_Country] CN
  ON
  CN.D_Country_Skey=OB.D_Country_Skey
  
  JOIN (SELECT
	   T.Transporter_Code
	  ,CN.Country_Code
	  ,OD.Order_Type
      ,sum(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month
      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
	  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
	  ON
	  T.Transporter_Ship_Via_Code=OD.Order_Ship_Via_Code
	  JOIN [$(ForeverData01)].[DM].[D_Country] CN
	  ON
      CN.Country_Code=OD.Order_Country_Code
      GROUP BY 
	   T.Transporter_Code
	  ,CN.Country_Code
	  ,OD.Order_Type
      ,YEAR(OD.Order_Shipped_Date) 
	  ,MONTH(OD.Order_Shipped_Date) 
	 )A ON A.Transporter_Code=T.Transporter_Code AND A.Country_Code= CN.Country_Code AND A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type

  GROUP BY OD.Order_Type
		   ,C.Year
	       ,C.MonthOfYear
		   ,T.Transporter_Code
           ,CN.Country_Name
		   ,A.OLPN_Weight
    
 UNION ALL
 --Ship_Via Transporter

SELECT OD.Order_Ship_Via_Code Col1
      ,T.Transporter_Code  Col2
	  ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order
	  ,SUM(Number_Of_Units_Shipped) Units
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight AS OLPN_Weight
	  ,'4' AS 'Rapport_ID' 
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey
    
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey

  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey
    
  JOIN (SELECT
	   T.Transporter_Code
	  ,OD.Order_Ship_Via_Code Ship_Via
	  ,OD.Order_Type
      ,sum(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month
      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
	  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
	  ON
	  T.Transporter_Ship_Via_Code=OD.Order_Ship_Via_Code
	 
      GROUP BY 
	   T.Transporter_Code
	  ,OD.Order_Ship_Via_Code
	  ,OD.Order_Type
      ,YEAR(OD.Order_Shipped_Date) 
	  ,MONTH(OD.Order_Shipped_Date) 
	 )A ON A.Transporter_Code=T.Transporter_Code AND A.Ship_Via=OD.Order_Ship_Via_Code AND A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type

     GROUP BY OD.Order_Type
		   ,C.Year
	       ,C.MonthOfYear
		   ,T.Transporter_Code
           ,OD.Order_Ship_Via_Code
		   ,A.OLPN_Weight

 UNION ALL
 --Transporter
 SELECT T.Transporter_Code  Col1
       ,'NA' Col2
	  ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order
	  ,SUM(Number_Of_Units_Shipped) Units
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight AS OLPN_Weight
	  ,'5' AS 'Rapport_ID' 
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey
    
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey

  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey
    
  JOIN (SELECT
	   T.Transporter_Code
	  ,OD.Order_Type
      ,sum(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month
      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
	  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
	  ON
	  T.Transporter_Ship_Via_Code=OD.Order_Ship_Via_Code
	 
      GROUP BY 
	   T.Transporter_Code
	  ,OD.Order_Type
      ,YEAR(OD.Order_Shipped_Date) 
	  ,MONTH(OD.Order_Shipped_Date) 
	 )A ON A.Transporter_Code=T.Transporter_Code AND A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type

  GROUP BY OD.Order_Type
		   ,C.Year
	       ,C.MonthOfYear
		   ,T.Transporter_Code
		   ,A.OLPN_Weight
 
 UNION ALL
 --NONE
 SELECT  'NA'  Col1
       ,'NA' Col2
	  ,C.Year
	  ,C.MonthOfYear Month
      ,SUM([Number_Of_Orders_Shipped]) Orders
	  ,SUM([Number_Of_IFS_Order_Lines_Shipped]) Order_Lines
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE CAST(SUM([Number_Of_IFS_Order_Lines_Shipped]) AS DECIMAL )/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL ) END AS DECIMAL (15,2))  AS Order_Lines_per_Order
      ,SUM([Number_Of_PickLines]) Pick_Lines
	  ,SUM([Number_Of_Parcels_Shipped]) Parcels
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM([Number_Of_Parcels_Shipped]) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Parcels_per_Order
	  ,SUM(Number_Of_Units_Shipped) Units
	  ,CAST(CASE WHEN SUM([Number_Of_Orders_Shipped]) = 0 THEN 0 ELSE  CAST(SUM(Number_Of_Units_Shipped) AS DECIMAL)/CAST(SUM([Number_Of_Orders_Shipped]) AS DECIMAL) END AS DECIMAL (15,2)) AS Units_per_Order
	  ,OD.Order_Type Order_Type
	  ,A.OLPN_Weight AS OLPN_Weight
	  ,'6' AS 'Rapport_ID' 
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Calendar] C
  ON
  OB.DateKey=C.DateKey
    
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey=OD.D_Order_Skey

  JOIN [$(ForeverData01)].[DM].[D_Transporter] T
  ON
  OB.D_Transporter_Skey=T.D_Transporter_Skey
    
  JOIN (SELECT
      OD.Order_Type
	  ,SUM(OL.[OLPN_Weight]) OLPN_Weight
      ,YEAR(OD.Order_Shipped_Date) Year
	  ,MONTH(OD.Order_Shipped_Date) Month

      FROM [$(ForeverData01)].[DM].[D_OLPN] OL
	  JOIN [$(ForeverData01)].[DM].[D_Order] OD
      ON
      OL.OLPN_Order_ID=OD.Order_ID
	  GROUP BY 
	  OD.Order_Type
      ,YEAR(OD.Order_Shipped_Date) 
	  ,MONTH(OD.Order_Shipped_Date) 
	 )A ON A.Year=C.Year AND A.Month=C.MonthOfYear AND A.Order_Type=OD.Order_Type

   GROUP BY OD.Order_Type
		   ,C.Year
	       ,C.MonthOfYear
		   ,A.OLPN_Weight