# Terraform module | AzureRM - Azure Backup VM Backup Policy

This Terraform module is designed to create a Azure Backup VM Backup Policy for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Azure Backup VM Backup Policy`

```hcl
module "backup_policy_vm" {
  source  = "sironite/backup_policy_vm/azurerm"
  version = "X.x.x"

  backup_policy_name = "example-backup-policy"
  resource_group_name = "example-resource-group"
  recovery_vault_name = "example-recovery-vault"
  backup_fequency = "Weekly"
  backup_weekdays = ["Monday"]
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
