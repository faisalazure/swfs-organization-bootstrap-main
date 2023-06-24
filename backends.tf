module "backend_shared" {
  source      = "./modules/backend"
  bucket_name = local.terraform_state_bucket_name.shared

  providers = {
    aws = aws.shared
  }
}


terraform {
  backend "s3" {
    bucket         = "swfs-terraform-state-initial"
    key            = "swfs-organization-bootstrap"
    region         = "eu-west-1"
    dynamodb_table = "swfs-terraform-state-lock"
  }
}