provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.security.id}:role/Admin"
  }

  alias  = "security"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.dev.id}:role/Admin"
  }

  alias  = "dev"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.data_dev.id}:role/Admin"
  }

  alias  = "data_dev"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.staging.id}:role/Admin"
  }

  alias  = "staging"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.shared.id}:role/Admin"
  }

  alias  = "shared"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.live.id}:role/Admin"
  }

  alias  = "live"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.data_security.id}:role/Admin"
  }

  alias  = "data_security"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.lab.id}:role/Admin"
  }

  alias  = "lab"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.data_live.id}:role/Admin"
  }

  alias  = "data_live"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.data_lab.id}:role/Admin"
  }

  alias  = "data_lab"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.iac_test.id}:role/Admin"
  }

  alias  = "iac_test"
  region = "eu-west-1"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.ua.id}:role/Admin"
  }

  alias  = "ua"
  region = "eu-west-1"
}
provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.swfs-ua.id}:role/Admin"
  }

  alias  = "swfs_ua"
  region = "eu-west-1"
}

resource "aws_organizations_account" "security" {
  name      = local.account_name["security"]
  email     = local.account_owner_email["security"]
  role_name = "Admin"
}

resource "aws_organizations_account" "dev" {
  name      = local.account_name["dev"]
  email     = local.account_owner_email["dev"]
  role_name = "Admin"
}

resource "aws_organizations_account" "data_dev" {
  name      = local.account_name["data_dev"]
  email     = local.account_owner_email["data_dev"]
  role_name = "Admin"
}

resource "aws_organizations_account" "staging" {
  name      = local.account_name["staging"]
  email     = local.account_owner_email["staging"]
  role_name = "Admin"
}

resource "aws_organizations_account" "shared" {
  name      = local.account_name["shared"]
  email     = local.account_owner_email["shared"]
  role_name = "Admin"
}

resource "aws_organizations_account" "live" {
  name      = local.account_name["live"]
  email     = local.account_owner_email["live"]
  role_name = "Admin"
}

resource "aws_organizations_account" "data_security" {
  name      = local.account_name["data_security"]
  email     = local.account_owner_email["data_security"]
  role_name = "Admin"
}

resource "aws_organizations_account" "lab" {
  name      = local.account_name["lab"]
  email     = local.account_owner_email["lab"]
  role_name = "Admin"
}

resource "aws_organizations_account" "data_live" {
  name      = local.account_name["data_live"]
  email     = local.account_owner_email["data_live"]
  role_name = "Admin"
}

resource "aws_organizations_account" "data_lab" {
  name      = local.account_name["data_lab"]
  email     = local.account_owner_email["data_lab"]
  role_name = "Admin"
}

resource "aws_organizations_account" "iac_test" {
  name      = local.account_name["iac_test"]
  email     = local.account_owner_email["iac_test"]
  role_name = "Admin"
}

resource "aws_organizations_account" "swfs-ua" {
  name      = local.account_name["swfs_ua"]
  email     = local.account_owner_email["swfs_ua"]
  role_name = "Admin"
}