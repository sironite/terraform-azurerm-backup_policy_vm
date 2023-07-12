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
| recovery\_vault\_name | The name of the recovery vault in which the backup policy is created. | `string` | yes |
| resource\_group\_name | the name of the resource group in which the backup policy is created. | `string` | yes |
| backup\_fequency | The backup frequency. | `string` | no |
| backup\_hour\_duration | The duration of the backup in hours. | `number` | no |
| backup\_hour\_interval | The interval between backups in hours. | `number` | no |
| backup\_time | The time of the day to perform the backup. | `string` | no |
| backup\_weekdays | The weekdays on which the backup is performed. | `list(string)` | no |
| instant\_restore\_resource\_group\_prefix | The prefix of the resource group to create for instant restore points. | `string` | no |
| instant\_restore\_resource\_group\_suffix | The suffix of the resource group to create for instant restore points. | `string` | no |
| instant\_restore\_retention\_days | The number of days to retain instant restore points. | `number` | no |
| policy\_type | The type of the backup policy. | `string` | no |
| retention\_daily\_count | The number of daily backups to retain. | `number` | no |
| retention\_monthly\_count | The number of monthly backups to retain. | `number` | no |
| retention\_monthly\_days | The number of days to retain monthly backups. | `number` | no |
| retention\_monthly\_include\_last\_days | Whether to include the last day of the month in the monthly backup. | `bool` | no |
| retention\_monthly\_weekday | The weekday on which the monthly backup is performed. | `string` | no |
| retention\_monthly\_weeks | The number of weeks to retain monthly backups. | `number` | no |
| retention\_yearly\_count | The number of yearly backups to retain. | `number` | no |
| retention\_yearly\_days | The number of days to retain yearly backups. | `number` | no |
| retention\_yearly\_include\_last\_days | Whether to include the last day of the year in the yearly backup. | `bool` | no |
| retention\_yearly\_months | The months on which the yearly backup is performed. | `number` | no |
| retention\_yearly\_weekdays | The weekdays on which the yearly backup is performed. | `string` | no |
| retention\_yearly\_weeks | The number of weeks to retain yearly backups. | `number` | no |
| timezone | The timezone of the backup policy. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| backup\_policy\_id | The ID of the Backup Policy. |
| backup\_policy\_name | The name of the Backup Policy. |

## Related documentation
<!-- END_TF_DOCS -->