
########################################################
####     FINANCIAL REPORTS DATA DEV                 ####
########################################################
resource "aws_iam_user" "financial_reports_user_data_dev" {
  name     = "financial_reports_user"
  provider = aws.data_dev
}

resource "aws_iam_access_key" "financial_reports_user_data_dev" {
  provider = aws.data_dev
  user     = aws_iam_user.financial_reports_user_data_dev.name
}

resource "aws_iam_user_policy" "financial_reports_user_data_dev" {
  provider = aws.data_dev
  name     = "financial_reports_user_permissions"
  user     = aws_iam_user.financial_reports_user_data_dev.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "secretsmanager:GetResourcePolicy",
                "secretsmanager:GetSecretValue",
                "secretsmanager:DescribeSecret",
                "secretsmanager:ListSecretVersionIds"
            ],
            "Resource": [
                "arn:aws:secretsmanager:eu-west-1:368751024611:secret:financial-reports-configuration-secret-oHkOfd"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "secretsmanager:ListSecrets",
            "Resource": "*"
        }
    ]
}
EOF
}
########################################################
####     FINANCIAL REPORTS DATA LIVE                ####
########################################################
resource "aws_iam_user" "financial_reports_user_data_live" {
  name     = "financial_reports_user"
  provider = aws.data_live
}

resource "aws_iam_access_key" "financial_reports_user_data_live" {
  provider = aws.data_live
  user     = aws_iam_user.financial_reports_user_data_live.name
}

resource "aws_iam_user_policy" "financial_reports_user_data_live" {
  provider = aws.data_live
  name     = "financial_reports_user_permissions"
  user     = aws_iam_user.financial_reports_user_data_live.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "secretsmanager:GetResourcePolicy",
                "secretsmanager:GetSecretValue",
                "secretsmanager:DescribeSecret",
                "secretsmanager:ListSecretVersionIds"
            ],
            "Resource": [
                "arn:aws:secretsmanager:eu-west-1:671292686471:secret:financial-reports-configuration-secret-c2mDjM"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "secretsmanager:ListSecrets",
            "Resource": "*"
        }
    ]
}
EOF
}
########################################################
####        DIGITAL API SERVICE DEV                 ####
########################################################
resource "aws_iam_user" "digital-api-service_user_dev" {
  name     = "digital_api_service_user"
  provider = aws.dev
}

resource "aws_iam_access_key" "digital-api-service_user_dev" {
  provider = aws.dev
  user     = aws_iam_user.digital-api-service_user_dev.name
}

resource "aws_iam_user_policy" "digital-api-service_user_dev" {
  provider = aws.dev
  name     = "digital_api_service_user_permissions"
  user     = aws_iam_user.digital-api-service_user_dev.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::swfs-dev-digital-client-image-os",
        "arn:aws:s3:::swfs-dev-digital-client-image-os/*"
      ],
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject",
        "s3:ListBucket"
      ]
    }
  ]
}
EOF
}
########################################################
####        DIGITAL API SERVICE STAGING             ####
########################################################
resource "aws_iam_user" "digital-api-service_user_staging" {
  name     = "digital_api_service_user"
  provider = aws.staging
}

resource "aws_iam_access_key" "digital-api-service_user_staging" {
  provider = aws.staging
  user     = aws_iam_user.digital-api-service_user_staging.name
}

resource "aws_iam_user_policy" "digital-api-service_user_staging" {
  provider = aws.staging
  name     = "digital_api_service_user_permissions"
  user     = aws_iam_user.digital-api-service_user_staging.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::swfs-staging-digital-client-image-os",
        "arn:aws:s3:::swfs-staging-digital-client-image-os/*"
      ],
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject",
        "s3:ListBucket"
      ]
    }
  ]
}
EOF
}
########################################################
####        DIGITAL API SERVICE LIVE                ####
########################################################
resource "aws_iam_user" "digital-api-service_user_live" {
  name     = "digital_api_service_user"
  provider = aws.live
}

resource "aws_iam_access_key" "digital-api-service_user_live" {
  provider = aws.live
  user     = aws_iam_user.digital-api-service_user_live.name
}

resource "aws_iam_user_policy" "digital-api-service_user_live" {
  provider = aws.live
  name     = "digital_api_service_user_permissions"
  user     = aws_iam_user.digital-api-service_user_live.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::swfs-live-digital-client-image-os",
        "arn:aws:s3:::swfs-live-digital-client-image-os/*"
      ],
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject",
        "s3:ListBucket"
      ]
    }
  ]
}
EOF
}
########################################################


