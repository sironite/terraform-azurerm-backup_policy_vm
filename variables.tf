variable "backup_policy_name" {
  description = "The name of the backup policy."
  type        = string
}

variable "resource_group_name" {
  description = "the name of the resource group in which the backup policy is created."
  type        = string
}

variable "recovery_vault_name" {
  description = "The name of the recovery vault in which the backup policy is created."
  type        = string
}

variable "policy_type" {
  description = "The type of the backup policy."
  type        = string
  default     = "V1"
}

variable "timezone" {
  description = "The timezone of the backup policy."
  type        = string
  default     = "(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna"
}

variable "instant_restore_retention_days" {
  description = "The number of days to retain instant restore points."
  type        = number
  default     = 2
}

variable "backup_fequency" {
  description = "The backup frequency."
  type        = string
  default     = "Weekly"
}

variable "backup_time" {
  description = "The time of the day to perform the backup."
  type        = string
  default     = null
}

variable "backup_hour_interval" {
  description = "The interval between backups in hours."
  type        = number
  default     = null
}

variable "backup_hour_duration" {
  description = "The duration of the backup in hours."
  type        = number
  default     = null
}

variable "backup_weekdays" {
  description = "The weekdays on which the backup is performed."
  type        = list(string)
  default     = null
}

variable "instant_restore_resource_group_prefix" {
  description = "The prefix of the resource group to create for instant restore points."
  type        = string
  default     = null
}

variable "instant_restore_resource_group_suffix" {
  description = "The suffix of the resource group to create for instant restore points."
  type        = string
  default     = null
}

variable "retention_daily_count" {
  description = "The number of daily backups to retain."
  type        = number
  default     = null
}

variable "retention_monthly_count" {
  description = "The number of monthly backups to retain."
  type        = number
  default     = null
}

variable "retention_monthly_weekday" {
  description = "The weekday on which the monthly backup is performed."
  type        = string
  default     = null
}

variable "retention_monthly_weeks" {
  description = "The number of weeks to retain monthly backups."
  type        = number
  default     = null
}

variable "retention_monthly_days" {
  description = "The number of days to retain monthly backups."
  type        = number
  default     = null
}

variable "retention_monthly_include_last_days" {
  description = "Whether to include the last day of the month in the monthly backup."
  type        = bool
  default     = null
}

variable "retention_yearly_count" {
  description = "The number of yearly backups to retain."
  type        = number
  default     = null
}

variable "retention_yearly_months" {
  description = "The months on which the yearly backup is performed."
  type        = number
  default     = null
}

variable "retention_yearly_weekdays" {
  description = "The weekdays on which the yearly backup is performed."
  type        = string
  default     = null
}

variable "retention_yearly_weeks" {
  description = "The number of weeks to retain yearly backups."
  type        = number
  default     = null
}

variable "retention_yearly_days" {
  description = "The number of days to retain yearly backups."
  type        = number
  default     = null
}

variable "retention_yearly_include_last_days" {
  description = "Whether to include the last day of the year in the yearly backup."
  type        = bool
  default     = null
}