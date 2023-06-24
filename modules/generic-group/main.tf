resource "aws_iam_group" "this" {
  name = var.group_name
}

resource "aws_iam_policy" "assume_role" {
  name = "${var.group_name}AssumeRole"
  policy = templatefile(
    "${path.module}/assume_role.tpl",
    {
      assume_role_arn = var.assume_role_arn
    }
  )
}

resource "aws_iam_group_policy_attachment" "assume_role" {
  group      = aws_iam_group.this.name
  policy_arn = aws_iam_policy.assume_role.arn
}
