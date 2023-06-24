variable "bucket_name" {
  type = string
}

variable "table_name" {
  type    = string
  default = "swfs-terraform-state-lock"
}
