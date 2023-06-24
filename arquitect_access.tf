# module "arquitect_role_security" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitect_role_management" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]
# }

# module "arquitect_role_staging" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.staging
#   }
# }

# module "arquitect_role_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.dev
#   }
# }

# module "arquitect_role_data_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.data_dev
#   }
# }

# module "arquitect_role_shared" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.shared
#   }
# }


# module "arquitect_role_live" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Arquitect"
#   aws_policy_name = ["AWSBillingReadOnlyAccess", "ReadOnlyAccess"]

#   providers = {
#     aws = aws.live
#   }
# }

# #######################################

# module "arquitects_group_security" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectSECURITY"

#   assume_role_arn = module.arquitect_role_security.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_management" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectMANAGEMENT"

#   assume_role_arn = module.arquitect_role_management.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_staging" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectSTAGING"

#   assume_role_arn = module.arquitect_role_staging.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_dev" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectDEV"

#   assume_role_arn = module.arquitect_role_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_data_dev" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectDATADEV"

#   assume_role_arn = module.arquitect_role_data_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_shared" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectSHARED"

#   assume_role_arn = module.arquitect_role_shared.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "arquitects_group_live" {
#   source     = "./modules/generic-group"
#   group_name = "ArquitectLIVE"

#   assume_role_arn = module.arquitect_role_live.role_arn

#   providers = {
#     aws = aws.security
#   }
# }