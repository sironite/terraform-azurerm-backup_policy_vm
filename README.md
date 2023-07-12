<!-- BEGIN_TF_DOCS -->
 ## Azure Backup VM Backup Policy
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-backup_policy_vm/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_policy_vm)

# Usage - Module

##  Azure Backup VM Backup Policy

```hcl
module "backup_policy_vm" {
  source  = "sironite/backup_policy_vm/azurerm"
  version = "X.x.x"

  backup_policy_name  = "example-backup-policy"
  resource_group_name = "example-resource-group"
  recovery_vault_name = "example-recovery-vault"
  backup_fequency     = "Weekly"
  backup_weekdays     = ["Monday"]
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_policy_vm.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_policy_vm) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| backup\_policy\_name | The name of the backup policy. | `string` | yes |
| recovery\_vault\_name | The name of the recovery vault. | `string` | yes |
| resource\_group\_name | The name of the resource group. | `string` | yes |
| backup\_fequency | The frequency of the backup. | `string` | no |
| backup\_time | The time of day to perform the backup. | `string` | no |
| daily\_count | The number of daily backups to retain. | `number` | no |
| instant\_restore\_retention\_days | The number of days to retain instant restore points. | `number` | no |
| monthly\_count | The number of monthly backups to retain. | `number` | no |
| monthly\_weekdays | The weekdays on which to perform monthly backups. | `list(string)` | no |
| monthly\_weeks | The weeks of the month on which to perform monthly backups. | `list(string)` | no |
| policy\_type | The type of the backup policy. | `string` | no |
| timezone | The timezone of the backup policy. | `string` | no |
| weekly\_count | The number of weekly backups to retain. | `number` | no |
| weekly\_weekdays | The weekdays on which to perform weekly backups. | `list(string)` | no |
| yearly\_count | The number of yearly backups to retain. | `number` | no |
| yearly\_months | The months of the year on which to perform yearly backups. | `list(string)` | no |
| yearly\_weekdays | The weekdays on which to perform yearly backups. | `list(string)` | no |
| yearly\_weeks | The weeks of the year on which to perform yearly backups. | `list(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| backup\_policy\_id | The ID of the Backup Policy. |
| backup\_policy\_name | The name of the Backup Policy. |

## Related documentation
<!-- END_TF_DOCS -->