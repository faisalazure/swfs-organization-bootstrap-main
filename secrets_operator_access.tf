# module "secrets_operator_role_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "SecretsOperator"
#   aws_policy_name = ["SecretsManagerReadWrite"]

#   providers = {
#     aws = aws.dev
#   }
# }

# module "secrets_operator_role_staging" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "SecretsOperator"
#   aws_policy_name = ["SecretsManagerReadWrite"]

#   providers = {
#     aws = aws.staging
#   }
# }

# module "secrets_operator_role_data_dev" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "SecretsOperator"
#   aws_policy_name = ["SecretsManagerReadWrite"]

#   providers = {
#     aws = aws.data_dev
#   }
# }

# module "secrets_operator_role_shared" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "SecretsOperator"
#   aws_policy_name = ["SecretsManagerReadWrite"]

#   providers = {
#     aws = aws.shared
#   }
# }

# module "secrets_operator_role_live" {
#   source         = "./modules/generic-role-multiple"
#   trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

#   role_name = "SecretsOperator"
#   aws_policy_name = ["SecretsManagerReadWrite"]

#   providers = {
#     aws = aws.live
#   }
# }

# module "secrets_operator_group_dev" {
#   source     = "./modules/generic-group"
#   group_name = "SecretsOperatorsDEV"

#   assume_role_arn = module.secrets_operator_role_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }


# module "secrets_operator_group_staging" {
#   source     = "./modules/generic-group"
#   group_name = "SecretsOperatorsSTAGING"

#   assume_role_arn = module.secrets_operator_role_staging.role_arn

#   providers = {
#     aws = aws.security
#   }
# }


# module "secrets_operator_group_data_dev" {
#   source     = "./modules/generic-group"
#   group_name = "SecretsOperatorsDATADEV"

#   assume_role_arn = module.secrets_operator_role_data_dev.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "secrets_operator_group_shared" {
#   source     = "./modules/generic-group"
#   group_name = "SecretsOperatorsSHARED"

#   assume_role_arn = module.secrets_operator_role_shared.role_arn

#   providers = {
#     aws = aws.security
#   }
# }

# module "secrets_operator_group_live" {
#   source     = "./modules/generic-group"
#   group_name = "SecretsOperatorsLIVE"

#   assume_role_arn = module.secrets_operator_role_live.role_arn

#   providers = {
#     aws = aws.security
#   }
# }
