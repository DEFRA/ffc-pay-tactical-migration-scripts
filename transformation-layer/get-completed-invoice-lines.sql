-- NOTE that line 16 will need to change if running in environments other than production
SELECT [ID]
      ,[File ID]
      ,[Line Type]
      ,[Invoice Number]
      ,[Value]
      ,[Marketing Year]
      ,[Scheme]
      ,[Fund]
      ,[Agreement Number]
      ,[Delivery Body]
      ,[Convergence]
      ,[Line ID]
      ,[Line Type Description]
      ,[Due Date]
      ,[Batch To Customer Date]
      ,[MSDax Account Code]
  FROM [Transformation Layer (Production)].[Stage].[SITISFI AP Lines]