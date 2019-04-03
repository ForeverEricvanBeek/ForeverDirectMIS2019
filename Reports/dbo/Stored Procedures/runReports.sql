CREATE procedure [dbo].[runReports]
 @output_execution_id bigint output
as
begin
 declare @execution_id bigint 
 exec SSISDB.catalog.create_execution 
  @folder_name = 'ForeverDirect MIS'
 ,@project_name = 'SSIS_Reports'
 ,@package_name = 'Reports-RT-SENSOR.dtsx'
 ,@execution_id = @execution_id output

  exec SSISDB.catalog.set_execution_property_override_value
  @execution_id = @execution_id,
  @property_path = '\package.Variables[User::Sensor_Date].Properties[Value]',
  @property_value = '20190301',
  @sensitive = 0;

 exec SSISDB.catalog.start_execution @execution_id
 set @output_execution_id = @execution_id
end