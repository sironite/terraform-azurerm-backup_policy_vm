resource "azurerm_backup_policy_vm" "this" {
  name                           = var.backup_policy_name
  resource_group_name            = var.resource_group_name
  recovery_vault_name            = var.recovery_vault_name
  policy_type                    = var.policy_type
  timezone                       = var.timezone
  instant_restore_retention_days = var.instant_restore_retention_days

  backup {
    frequency = var.backup_fequency
    time      = var.backup_time
  }

  retention_daily {
    count = var.daily_count
  }


  dynamic "retention_weekly" {
    for_each = var.weekly_count == 0 ? [] : [1]
    content {
      count    = var.weekly_count
      weekdays = var.weekly_weekdays
    }

  }

  dynamic "retention_monthly" {
    for_each = var.monthly_count == 0 ? [] : [1]
    content {
      count    = var.monthly_count
      weekdays = var.monthly_weekdays
      weeks    = var.monthly_weeks
    }

  }
  dynamic "retention_yearly" {
    for_each = var.yearly_count == 0 ? [] : [1]
    content {
      count    = var.yearly_count
      weekdays = var.yearly_weekdays
      weeks    = var.yearly_weeks
      months   = var.yearly_months
    }

  }
}
  