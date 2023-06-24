locals {
  account_name = {
    security      = "SWFS-SECURITY"
    dev           = "SWFS-DEV"
    staging       = "SWFS-STAGING"
    shared        = "SWFS-SHARED"
    data_dev      = "DATA-DEV"
    live          = "SWFS-LIVE"
    data_security = "DATA-SECURITY"
    lab           = "LAB"
    data_live     = "DATA-LIVE"
    data_lab      = "DATA-LAB"
    iac_test      = "IAC-TEST"
    swfs_ua       = "SWFS-UA"
  }

  # Use existing emails, in case of the account recovery. You will have to use different email addresses. Some email
  # providers offer sub-addressing, with a tag after the + (plus) sign, so you can have infinite amount of addresses.
  account_owner_email = {
    security      = "dev.ops+security@smallworldfs.com"
    dev           = "dev.ops+dev@smallworldfs.com"
    staging       = "dev.ops+staging@smallworldfs.com"
    shared        = "dev.ops+shared@smallworldfs.com"
    data_dev      = "dev.ops+datadev@smallworldfs.com"
    live          = "dev.ops+live@smallworldfs.com"
    data_security = "dev.ops+datasecurity@smallworldfs.com"
    lab           = "dev.ops+lab@smallworldfs.com"
    data_live     = "dev.ops+datalive@smallworldfs.com"
    data_lab      = "dev.ops+datalab@smallworldfs.com"
    iac_test      = "dev.ops+iactest@smallworldfs.com"
    swfs_ua       = "dev.ops+swfs+ua@smallworldfs.com"
  }

  terraform_state_bucket_name = {
    security = "swfs-terraform-state-security"
    shared   = "swfs-terraform-state-shared"
  }
}
