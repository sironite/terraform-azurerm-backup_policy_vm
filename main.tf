resource "azurerm_backup_policy_vm" "this" {
  name = var.backup_policy_name
  resource_group_name = var.resource_group_name
  recovery_vault_name = var.recovery_vault_name
  policy_type = var.policy_type
  timezone = var.timezone
  instant_restore_retention_days = var.instant_restore_retention_days

  backup {
    frequency = var.backup_fequency
    time = var.backup_time
    hour_interval = var.backup_hour_interval
    hour_duration = var.backup_hour_duration
    weekdays = var.backup_weekdays
  }

  instant_restore_resource_group {
    prefix = var.instant_restore_resource_group_prefix
    suffix = var.instant_restore_resource_group_suffix
  }

  retention_daily {
    count = var.retention_daily_count
  }

  retention_monthly {
    count = var.retention_monthly_count
    weekday = var.retention_monthly_weekday
    weeks = var.retention_monthly_weeks
    days = var.retention_monthly_days
    include_last_days = var.retention_monthly_include_last_days
  }

  retention_yearly {
    count = var.retention_yearly_count
    months = var.retention_yearly_months
    weekdays = var.retention_yearly_weekdays
    weeks = var.retention_yearly_weeks
    days = var.retention_yearly_days
    include_last_days =  var.retention_yearly_include_last_days
  }
}
  