module "backup_policy_vm" {
  source  = "sironite/backup_policy_vm/azurerm"
  version = "X.x.x"

  backup_policy_name = "example-backup-policy"
  resource_group_name = "example-resource-group"
  recovery_vault_name = "example-recovery-vault"
  backup_fequency = "Weekly"
  backup_weekdays = ["Monday"]
}