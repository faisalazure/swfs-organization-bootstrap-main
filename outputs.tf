// output "links" {
//   value = {
//     aws_console_sign_in    = "https://${aws_organizations_account.security.id}.signin.aws.amazon.com/console/"
//     switch_role_dev    = "https://signin.aws.amazon.com/switchrole?account=${aws_organizations_account.dev.id}&roleName=${urlencode(module.developer_role_dev.role_name)}&displayName=${urlencode("Developer@dev")}"
//     switch_role_shared = "https://signin.aws.amazon.com/switchrole?account=${aws_organizations_account.shared.id}&roleName=${urlencode(module.developer_role_dev.role_name)}&displayName=${urlencode("Developer@shared")}"
//   }
// }