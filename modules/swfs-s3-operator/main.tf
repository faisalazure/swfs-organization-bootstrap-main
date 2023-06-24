
resource "aws_iam_policy" "this" {
  name        = "s3-operator"
  path        = "/"
  description = "Policy to operate S3"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:ListAllMyBuckets",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:GetObjectAttributes",
          "s3:ListBucket",
          "s3:DeleteObject"
        ]
        Effect = "Allow"
        # allowed buckets
        Resource = [
          "arn:aws:s3:::swfs-*-digital-mobile-apps-os/*",
          "arn:aws:s3:::swfs-*-digital-mobile-apps-os",
          "arn:aws:s3:::swfs-*-mwaa-os/*",
          "arn:aws:s3:::swfs-*-mwaa-os"
        ]
      }
    ]
  })
}

resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = data.template_file.trust_relationship.rendered
}

data "template_file" "trust_relationship" {
  template = file("${path.module}/trust_relationship.tpl")

  vars = {
    trusted_entity = var.trusted_entity
  }
}

resource "aws_iam_role_policy_attachment" "policy_attachment_s3" {
  policy_arn = aws_iam_policy.this.arn
  role       = aws_iam_role.this.name
}