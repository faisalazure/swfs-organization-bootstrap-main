resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = data.template_file.trust_relationship.rendered
}

data "template_file" "trust_relationship" {
  template = file("${path.module}/trust_relationship.tpl")

  vars = {
    trusted_entity = jsonencode(var.trusted_entity)
  }
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  for_each   = toset(var.aws_policy_name)
  policy_arn = "arn:aws:iam::aws:policy/${each.key}"
  role       = aws_iam_role.this.name
}