module "development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "francesco.poc.aft+dev@gmail.com"
    AccountName               = "aft-development"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "francesco.poc.aft+dev@gmail.com"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev"
  }

  account_customizations_name = "development"
}

