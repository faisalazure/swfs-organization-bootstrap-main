# module "developer_role_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Developer"
#   aws_policy_name = ["ReadOnlyAccess"]

#   providers = {
#     aws = aws.dev
#   }
# }

# module "developer_role_staging" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Developer"
#   aws_policy_name = ["ReadOnlyAccess"]

#   providers = {
#     aws = aws.staging
#   }
# }

# module "developer_role_data_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Developer"
#   aws_policy_name = ["ReadOnlyAccess"]

#   providers = {
#     aws = aws.data_dev
#   }
# }

# module "developer_role_shared" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Developer"
#   aws_policy_name = ["ReadOnlyAccess"]

#   providers = {
#     aws = aws.shared
#   }
# }

# module "developer_role_live" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "Developer"
#   aws_policy_name = ["ReadOnlyAccess"]

#   providers = {
#     aws = aws.live
#   }
# }

# module "developer_group_dev" {
#   source     = "./modules/generic-group"
#   group_name = "DevelopersDEV"

#   assume_role_arn = module.developer_role_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "developer_group_staging" {
#   source     = "./modules/generic-group"
#   group_name = "DevelopersSTAGING"

#   assume_role_arn = module.developer_role_staging.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "developer_group_data_dev" {
#   source     = "./modules/generic-group"
#   group_name = "DevelopersDATADEV"

#   assume_role_arn = module.developer_role_data_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "developer_group_shared" {
#   source     = "./modules/generic-group"
#   group_name = "DevelopersSHARED"

#   assume_role_arn = module.developer_role_shared.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "developer_group_live" {
#   source     = "./modules/generic-group"
#   group_name = "DevelopersLIVE"

#   assume_role_arn = module.developer_role_live.role_arn

#   providers = {
#     aws = aws.security
#   }
# }