resource "aws_iam_group" "this" {
  name = var.group_name
}

resource "aws_iam_policy" "assume_role" {
  for_each = var.assume_role_arns
  name     = "${var.group_name}AssumeRole${each.key}"
  policy = templatefile(
    "${path.module}/assume_role.tpl",
    {
      assume_role_arn = "${each.value}"
    }
  )
}

resource "aws_iam_group_policy_attachment" "assume_role" {
  for_each   = var.assume_role_arns
  group      = aws_iam_group.this.name
  policy_arn = aws_iam_policy.assume_role[each.key].arn
}
