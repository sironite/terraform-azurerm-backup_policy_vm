variable "backup_policy_name" {
  type        = string
  description = "The name of the backup policy."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "recovery_vault_name" {
  type        = string
  description = "The name of the recovery vault."
}

variable "policy_type" {
  type        = string
  description = "The type of the backup policy."
  default     = "V1"
}

variable "timezone" {
  type        = string
  description = "The timezone of the backup policy."
  default     = "W. Europe Standard Time"
}

variable "instant_restore_retention_days" {
  type        = number
  description = "The number of days to retain instant restore points."
  default     = 2
}

variable "backup_fequency" {
  type        = string
  description = "The frequency of the backup."
  default     = "Daily"
}

variable "backup_time" {
  type        = string
  description = "The time of day to perform the backup."
  default     = "01:00"
}

variable "daily_count" {
  type        = number
  description = "The number of daily backups to retain."
  default     = 14
}

variable "weekly_count" {
  type        = number
  description = "The number of weekly backups to retain."
  default     = 5
}

variable "weekly_weekdays" {
  type        = list(string)
  description = "The weekdays on which to perform weekly backups."
  default     = ["Sunday"]
}

variable "monthly_count" {
  type        = number
  description = "The number of monthly backups to retain."
  default     = 6
}

variable "monthly_weekdays" {
  type        = list(string)
  description = "The weekdays on which to perform monthly backups."
  default     = ["Sunday"]
}

variable "monthly_weeks" {
  type        = list(string)
  description = "The weeks of the month on which to perform monthly backups."
  default     = ["First"]
}

variable "yearly_count" {
  type        = number
  description = "The number of yearly backups to retain."
  default     = 0
}

variable "yearly_weekdays" {
  type        = list(string)
  description = "The weekdays on which to perform yearly backups."
  default     = []
}

variable "yearly_weeks" {
  type        = list(string)
  description = "The weeks of the year on which to perform yearly backups."
  default     = []
}

variable "yearly_months" {
  type        = list(string)
  description = "The months of the year on which to perform yearly backups."
  default     = []
}