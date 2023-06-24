
module "administrators_global_group" {
  source     = "./modules/generic-group-multiple"
  group_name = "AdministratorGLOBAL"

  assume_role_arns = {
    "SECURITY"      = module.administrator_role_security.role_arn,
    "MANAGEMENT"    = module.administrator_role_management.role_arn,
    "STAGING"       = module.administrator_role_staging.role_arn,
    "DEV"           = module.administrator_role_dev.role_arn,
    "DATA-DEV"      = module.administrator_role_data_dev.role_arn,
    "SHARED"        = module.administrator_role_shared.role_arn,
    "LIVE"          = module.administrator_role_live.role_arn,
    "DATA-SECURITY" = module.administrator_role_data_security.role_arn,
    "LAB"           = module.administrator_role_lab.role_arn,
    "DATA-LIVE"     = module.administrator_role_data_live.role_arn
  }

  providers = {
    aws = aws.security
  }
}

module "administrators_global_security_group" {
  source     = "./modules/generic-group-multiple"
  group_name = "AdministratorGLOBALSECURITY"

  assume_role_arns = {
    "SECURITY"   = module.administrator_role_security.role_arn,
    "MANAGEMENT" = module.administrator_role_management.role_arn,
    "SHARED"     = module.administrator_role_shared.role_arn
  }
  providers = {
    aws = aws.security
  }
}

module "administrators_global_environments_group" {
  source     = "./modules/generic-group-multiple"
  group_name = "AdministratorGLOBALENVIRONMENTS"

  assume_role_arns = {
    "STAGING" = module.administrator_role_staging.role_arn,
    "DEV"     = module.administrator_role_dev.role_arn,
    "LIVE"    = module.administrator_role_live.role_arn
    "SWFS-UA" = module.administrator_role_swfs_ua.role_arn
  }

  providers = {
    aws = aws.security
  }
}

module "administrators_global_data_group" {
  source     = "./modules/generic-group-multiple"
  group_name = "AdministratorGLOBALDATA"

  assume_role_arns = {
    "DATA-DEV"      = module.administrator_role_data_dev.role_arn,
    "DATA-SECURITY" = module.administrator_role_data_security.role_arn,
    "DATA-LIVE"     = module.administrator_role_data_live.role_arn,
    "DATA-LAB"      = module.administrator_role_data_lab.role_arn
  }

  providers = {
    aws = aws.security
  }
}
module "administrators_global_lab_group" {
  source     = "./modules/generic-group-multiple"
  group_name = "AdministratorGLOBALLABORATORY"

  assume_role_arns = {
    "LAB"      = module.administrator_role_lab.role_arn,
    "IAC-TEST" = module.administrator_role_iac_test.role_arn
  }

  providers = {
    aws = aws.security
  }
}