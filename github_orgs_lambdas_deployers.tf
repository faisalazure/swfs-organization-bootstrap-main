module "lambda_administrator_role_security" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.security
  }
}

module "lambda_administrator_role_staging" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.staging
  }
}

module "lambda_administrator_role_dev" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.dev
  }
}

module "lambda_administrator_role_data_dev" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.data_dev
  }
}

module "lambda_administrator_role_shared" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.shared
  }
}

module "lambda_administrator_role_live" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.live
  }
}

module "lambda_administrator_role_data_security" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.data_security
  }
}

module "lambda_administrator_role_lab" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.lab
  }
}

module "lambda_administrator_role_data_live" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.data_live
  }
}

module "lambda_administrator_role_data_lab" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.data_lab
  }
}

module "lambda_administrator_role_iac_test" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.iac_test
  }
}

module "lambda_administrator_role_swfs_ua" {
  source         = "./modules/lambda-template-admin-role"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "LambdaTemplateAdmin"

  providers = {
    aws = aws.swfs_ua
  }
}