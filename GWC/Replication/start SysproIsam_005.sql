
:SETVAR Pub   "SysproIsam_005"
:SETVAR PubS "'SysproIsam_005'"
-------------------------------------------------------------------------------
-- Add a subscription for the publication at the publisher.
-------------------------------------------------------------------------------
:CONNECT SQL2008NEW
EXEC SysproIsam.sys.sp_addsubscription 
  @publication                      = $(Pub),
  @subscriber                       = N'SQLREPORTING',
  @destination_db                   = N'SysproIsam',
  @subscription_type                = N'pull',
  @sync_type                        = N'automatic',
  @article                          = N'all',
  @update_mode                      = N'read only';
GO

-------------------------------------------------------------------------------
-- Add a subscription for the publication at the subscriber.
-------------------------------------------------------------------------------
:CONNECT SQLREPORTING
EXEC SysproIsam.sys.sp_addpullsubscription 
  @publication                      = $(Pub), 
  @publisher                        = N'SQL2008NEW', 
  @publisher_db                     = N'SysproIsam',
  @independent_agent                = N'true', 
  @subscription_type                = N'pull',
  @description                      = N'',
  @update_mode                      = N'read only',
  @immediate_sync                   = 1;
GO

-------------------------------------------------------------------------------
-- Add a job for the subscription at the subscriber.
-------------------------------------------------------------------------------
:CONNECT SQLREPORTING
EXEC SysproIsam.sys.sp_addpullsubscription_agent 
  @publication                      = $(Pub), 
  @publisher                        = N'SQL2008NEW', 
  @publisher_db                     = N'SysproIsam', 
  @distributor                      = N'SQLREPORTING', 
  @distributor_security_mode        = 1,
  @enabled_for_syncmgr              = N'False',
  @frequency_type                   = 64,
  @frequency_interval               = 0, 
  @frequency_relative_interval      = 0, 
  @frequency_recurrence_factor      = 0, 
  @frequency_subday                 = 0,
  @frequency_subday_interval        = 0, 
  @active_start_time_of_day         = 0, 
  @active_end_time_of_day           = 235959,
  @active_start_date                = 20200515, 
  @active_end_date                  = 99991231, 
  @alt_snapshot_folder              = N'', 
  @working_directory                = N'',
  @use_ftp                          = N'False',
  @publication_type                 = 0;
GO

-------------------------------------------------------------------------------
-- Start the snapshot for the publication.
-------------------------------------------------------------------------------
:CONNECT SQL2008NEW
SET DEADLOCK_PRIORITY 10;
GO
EXEC SysproIsam.sys.sp_startpublication_snapshot 
  @publication                      = $(Pub);
GO