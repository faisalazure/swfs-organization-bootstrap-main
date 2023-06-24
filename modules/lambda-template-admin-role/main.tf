# aws policies for LambdaTemplateAdmin
resource "aws_iam_policy" "lambda_template_admin_access_ec2" {
  name        = "LambdaTemplateAdminAccessToEC2"
  path        = "/"
  description = "Policy to deploy the aws-template-lambda from an authorized github organization"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:AttachNetworkInterface",
          "ec2:AuthorizeSecurityGroupEgress",
          "ec2:AuthorizeSecurityGroupIngress",
          "ec2:CreateNetworkInterface",
          "ec2:CreateNetworkInterfacePermission",
          "ec2:CreateSecurityGroup",
          "ec2:CreateTags",
          "ec2:DeleteNetworkInterface",
          "ec2:DeleteNetworkInterfacePermission",
          "ec2:DeleteSecurityGroup",
          "ec2:DeleteTags",
          "ec2:DescribeEgressOnlyInternetGateways",
          "ec2:DescribeNetworkInterfaceAttribute",
          "ec2:DescribeNetworkInterfacePermissions",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DescribeSecurityGroupReferences",
          "ec2:DescribeSecurityGroupRules",
          "ec2:DescribeSecurityGroups",
          "ec2:DescribeStaleSecurityGroups",
          "ec2:DescribeSubnets",
          "ec2:DescribeVpcAttribute",
          "ec2:DescribeVpcs",
          "ec2:DetachNetworkInterface",
          "ec2:ModifyNetworkInterfaceAttribute",
          "ec2:ModifySecurityGroupRules",
          "ec2:ResetNetworkInterfaceAttribute",
          "ec2:RevokeSecurityGroupEgress",
          "ec2:RevokeSecurityGroupIngress",
          "ec2:UpdateSecurityGroupRuleDescriptionsEgress",
          "ec2:UpdateSecurityGroupRuleDescriptionsIngress"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "lambda_template_admin_access_ecr" {
  name        = "LambdaTemplateAdminAccessToECR"
  path        = "/"
  description = "Policy to deploy the aws-template-lambda from an authorized github organization"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:BatchCheckLayerAvailability",
          "ecr:BatchGetImage",
          "ecr:CompleteLayerUpload",
          "ecr:DescribeImages",
          "ecr:DescribePullThroughCacheRules",
          "ecr:DescribeRepositories",
          "ecr:GetAuthorizationToken",
          "ecr:GetDownloadUrlForLayer",
          "ecr:InitiateLayerUpload",
          "ecr:ListImages",
          "ecr:ListTagsForResource",
          "ecr:PutImage",
          "ecr:UploadLayerPart"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "lambda_template_admin_access_iam" {
  name        = "LambdaTemplateAdminAccessToIAM"
  path        = "/"
  description = "Policy to deploy the aws-template-lambda from an authorized github organization"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:AttachRolePolicy",
          "iam:CreatePolicy",
          "iam:CreatePolicyVersion",
          "iam:CreateRole",
          "iam:DeleteRole",
          "iam:DetachRolePolicy",
          "iam:GetPolicy",
          "iam:GetPolicyVersion",
          "iam:GetRole",
          "iam:GetRolePolicy",
          "iam:ListAttachedRolePolicies",
          "iam:ListInstanceProfilesForRole",
          "iam:ListPolicies",
          "iam:ListRolePolicies",
          "iam:ListRoles",
          "iam:TagRole",
          "iam:UntagRole",
          "iam:UpdateRole"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "lambda_template_admin_access_s3" {
  name        = "LambdaTemplateAdminAccesstoS3"
  path        = "/"
  description = "Policy to access the swfs-terraform-state-shared bucket"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket",
          "s3:GetObjectVersion",
          "s3:GetObjectAttributes",
        ]
        Effect = "Allow"
        Resource = [
          "arn:aws:s3:::swfs-terraform-state-shared",
          "arn:aws:s3:::swfs-terraform-state-shared/*"
        ]
      },
    ]
  })
}

resource "aws_iam_policy" "lambda_template_admin_access_dynamo" {
  name        = "LambdaTemplateAdminAccesstoDynamo"
  path        = "/"
  description = "Policy to access the swfs-terraform-state-lock table on shared"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "dynamodb:DeleteItem",
          "dynamodb:DescribeTable",
          "dynamodb:GetItem",
          "dynamodb:GetRecords",
          "dynamodb:ListTables",
          "dynamodb:PutItem",
          "dynamodb:Query",
          "dynamodb:Scan",
          "dynamodb:UpdateItem",
          "dynamodb:UpdateTable"
        ]
        Effect = "Allow"
        Resource = [
          "arn:aws:dynamodb:*:463167595377:table/swfs-terraform-state-lock",
        ]
      },
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

resource "aws_iam_role_policy_attachment" "policy_attachment_ec2" {
  policy_arn = aws_iam_policy.lambda_template_admin_access_ec2.arn
  role       = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "policy_attachment_ecr" {
  policy_arn = aws_iam_policy.lambda_template_admin_access_ecr.arn
  role       = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "policy_attachment_iam" {
  policy_arn = aws_iam_policy.lambda_template_admin_access_iam.arn
  role       = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "policy_attachment_s3" {
  policy_arn = aws_iam_policy.lambda_template_admin_access_s3.arn
  role       = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "policy_attachment_dynamo" {
  policy_arn = aws_iam_policy.lambda_template_admin_access_dynamo.arn
  role       = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "policy_attachment_lambda" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  role       = aws_iam_role.this.name
}