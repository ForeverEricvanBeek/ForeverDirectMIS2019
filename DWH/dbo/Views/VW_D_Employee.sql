CREATE VIEW dbo.VW_D_Employee
AS
SELECT [pers_key]					Employee_Key
      ,[pers_id]					Employee_ID
      ,[badge_id]					Employee_Badge_id
      ,[name]						Employee_Name
      ,[department_code]			Employee_Department_Code
      ,[department_description]		Employee_Department_Description
      ,[costcenter_code]			Employee_Costcenter_Code
      ,[costcenter_description]		Employee_Costcenter_Description
      ,[supervisor]					Employee_Supervisor
      ,[timing]						IND_Timing
      ,[empoyer]					Employer
      ,[employee_start]				Employee_Start_Date
      ,[employee_end]				Employee_End_Date
  FROM [ATIMO].[emplstam]
  WHERE ActInd='Y'
UNION ALL
SELECT  '-1', '-1','-1','Unknown',null,null,null,null,null,null,null,null,null