data "aws_caller_identity" "current" {}

module "administrator_role_security" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.security
  }
}

module "administrator_role_management" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator", "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

}

module "administrator_role_staging" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.staging
  }
}

module "administrator_role_dev" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.dev
  }
}

module "administrator_role_data_dev" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.data_dev
  }
}

module "administrator_role_shared" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.shared
  }
}


module "administrator_role_live" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.live
  }
}

module "administrator_role_data_security" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.data_security
  }
}

module "administrator_role_lab" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.lab
  }
}

module "administrator_role_data_live" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.data_live
  }
}

module "administrator_role_data_lab" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.data_lab
  }
}

module "administrator_role_iac_test" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.iac_test
  }
}

module "administrator_role_swfs_ua" {
  source         = "./modules/generic-role-multiple"
  trusted_entity = ["arn:aws:iam::${aws_organizations_account.security.id}:root", "arn:aws:iam::${aws_organizations_account.security.id}:role/Administrator"]

  role_name       = "Administrator"
  aws_policy_name = ["AdministratorAccess"]

  providers = {
    aws = aws.swfs_ua
  }
}

#######################################

module "administrators_group_security" {
  source     = "./modules/generic-group"
  group_name = "AdministratorSECURITY"

  assume_role_arn = module.administrator_role_security.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_management" {
  source     = "./modules/generic-group"
  group_name = "AdministratorMANAGEMENT"

  assume_role_arn = module.administrator_role_management.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_staging" {
  source     = "./modules/generic-group"
  group_name = "AdministratorSTAGING"

  assume_role_arn = module.administrator_role_staging.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_dev" {
  source     = "./modules/generic-group"
  group_name = "AdministratorDEV"

  assume_role_arn = module.administrator_role_dev.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_data_dev" {
  source     = "./modules/generic-group"
  group_name = "AdministratorDATADEV"

  assume_role_arn = module.administrator_role_data_dev.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_shared" {
  source     = "./modules/generic-group"
  group_name = "AdministratorSHARED"

  assume_role_arn = module.administrator_role_shared.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_live" {
  source     = "./modules/generic-group"
  group_name = "AdministratorLIVE"

  assume_role_arn = module.administrator_role_live.role_arn

  providers = {
    aws = aws.security
  }
}


module "administrators_group_data_security" {
  source     = "./modules/generic-group"
  group_name = "AdministratorDATASECURITY"

  assume_role_arn = module.administrator_role_data_security.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_lab" {
  source     = "./modules/generic-group"
  group_name = "AdministratorLAB"

  assume_role_arn = module.administrator_role_lab.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_data_live" {
  source     = "./modules/generic-group"
  group_name = "AdministratorDATALIVE"

  assume_role_arn = module.administrator_role_data_live.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_data_lab" {
  source     = "./modules/generic-group"
  group_name = "AdministratorDATALAB"

  assume_role_arn = module.administrator_role_data_lab.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_iac_test" {
  source     = "./modules/generic-group"
  group_name = "AdministratorIACTEST"

  assume_role_arn = module.administrator_role_iac_test.role_arn

  providers = {
    aws = aws.security
  }
}

module "administrators_group_swf_ua" {
  source     = "./modules/generic-group"
  group_name = "AdministratorSWFS-UA"

  assume_role_arn = module.administrator_role_swfs_ua.role_arn

  providers = {
    aws = aws.security
  }
}
