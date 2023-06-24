module "swfs_s3_operator_role_security" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.security
  }
}

module "swfs_s3_operator_role_staging" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.staging
  }
}

module "swfs_s3_operator_role_dev" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.dev
  }
}

module "swfs_s3_operator_role_data_dev" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.data_dev
  }
}

module "swfs_s3_operator_role_shared" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.shared
  }
}

module "swfs_s3_operator_role_live" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.live
  }
}

module "swfs_s3_operator_role_data_security" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.data_security
  }
}

module "swfs_s3_operator_role_lab" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.lab
  }
}

module "swfs_s3_operator_role_data_live" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.data_live
  }
}

module "swfs_s3_operator_role_data_lab" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.data_lab
  }
}

module "swfs_s3_operator_role_iac_test" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.iac_test
  }
}

module "swfs_s3_operator_role_swfs_ua" {
  source         = "./modules/swfs-s3-operator"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.security.id}:root"

  role_name = "swfs-s3-operator"

  providers = {
    aws = aws.swfs_ua
  }
}