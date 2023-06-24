resource "aws_iam_user" "grafana_cloud_user_lab" {
  name     = "grafana-cloud-integration"
  provider = aws.lab
}

resource "aws_iam_access_key" "grafana_cloud_user_lab" {
  provider = aws.lab
  user     = aws_iam_user.grafana_cloud_user_lab.name

}


resource "aws_secretsmanager_secret" "grafana_cloud_user_lab" {
  provider                = aws.lab
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}

resource "aws_secretsmanager_secret_version" "grafana_cloud_user_lab" {
  provider  = aws.lab
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_lab.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_lab.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_lab.secret}"
  })
}

resource "aws_iam_user_policy" "grafana_cloud_user_lab" {
  provider = aws.lab
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_lab.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}

###


resource "aws_iam_user" "grafana_cloud_user_dev" {
  name     = "grafana-cloud-integration"
  provider = aws.dev
}

resource "aws_iam_access_key" "grafana_cloud_user_dev" {
  provider = aws.dev
  user     = aws_iam_user.grafana_cloud_user_dev.name
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_dev" {
  provider                = aws.dev
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}

resource "aws_secretsmanager_secret_version" "grafana_cloud_user_dev" {
  provider  = aws.dev
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_dev.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_dev.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_dev.secret}"
  })
}

resource "aws_iam_user_policy" "grafana_cloud_user_dev" {
  provider = aws.dev
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_dev.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user" "grafana_cloud_user_staging" {
  name     = "grafana-cloud-integration"
  provider = aws.staging
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_staging" {
  provider                = aws.staging
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}

resource "aws_iam_access_key" "grafana_cloud_user_staging" {
  provider = aws.staging
  user     = aws_iam_user.grafana_cloud_user_staging.name
}

resource "aws_secretsmanager_secret_version" "grafana_cloud_user_staging" {
  provider  = aws.staging
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_staging.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_staging.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_staging.secret}"
  })
}

resource "aws_iam_user_policy" "grafana_cloud_user_staging" {
  provider = aws.staging
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_staging.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user" "grafana_cloud_user_live" {
  name     = "grafana-cloud-integration"
  provider = aws.live
}

resource "aws_iam_access_key" "grafana_cloud_user_live" {
  provider = aws.live
  user     = aws_iam_user.grafana_cloud_user_live.name
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_live" {
  provider                = aws.live
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}


resource "aws_secretsmanager_secret_version" "grafana_cloud_user_live" {
  provider  = aws.live
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_live.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_live.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_live.secret}"
  })
}
resource "aws_iam_user_policy" "grafana_cloud_user_live" {
  provider = aws.live
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_live.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user" "grafana_cloud_user_data_dev" {
  name     = "grafana-cloud-integration"
  provider = aws.data_dev
}

resource "aws_iam_access_key" "grafana_cloud_user_data_dev" {
  provider = aws.data_dev
  user     = aws_iam_user.grafana_cloud_user_data_dev.name
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_data_dev" {
  provider                = aws.data_dev
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}

resource "aws_secretsmanager_secret_version" "grafana_cloud_user_data_dev" {
  provider  = aws.data_dev
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_data_dev.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_data_dev.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_data_dev.secret}"
  })
}

resource "aws_iam_user_policy" "grafana_cloud_user_data_dev" {
  provider = aws.data_dev
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_data_dev.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}
resource "aws_iam_user" "grafana_cloud_user_data_live" {
  name     = "grafana-cloud-integration"
  provider = aws.data_live
}

resource "aws_iam_access_key" "grafana_cloud_user_data_live" {
  provider = aws.data_live
  user     = aws_iam_user.grafana_cloud_user_data_live.name
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_data_live" {
  provider                = aws.data_live
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}

resource "aws_secretsmanager_secret_version" "grafana_cloud_user_data_live" {
  provider  = aws.data_live
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_data_live.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_data_live.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_data_live.secret}"
  })
}

resource "aws_iam_user_policy" "grafana_cloud_user_data_live" {
  provider = aws.data_live
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_data_live.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user" "grafana_cloud_user_swfs_ua" {
  name     = "grafana-cloud-integration"
  provider = aws.swfs_ua
}

resource "aws_iam_access_key" "grafana_cloud_user_swfs_ua" {
  provider = aws.swfs_ua
  user     = aws_iam_user.grafana_cloud_user_swfs_ua.name
}

resource "aws_secretsmanager_secret" "grafana_cloud_user_swfs_ua" {
  provider                = aws.swfs_ua
  name                    = "grafana-cloud-integration-iam-user-secret-access-key"
  description             = "grafana-cloud-integration-iam-user-secret-access-key"
  recovery_window_in_days = 14
}


resource "aws_secretsmanager_secret_version" "grafana_cloud_user_swfs_ua" {
  provider  = aws.swfs_ua
  secret_id = aws_secretsmanager_secret.grafana_cloud_user_swfs_ua.id
  secret_string = jsonencode({
    "ACCESS_KEY_ID" : "${aws_iam_access_key.grafana_cloud_user_swfs_ua.id}",
    "SECRET_ACCESS_KEY" : "${aws_iam_access_key.grafana_cloud_user_swfs_ua.secret}"
  })
}
resource "aws_iam_user_policy" "grafana_cloud_user_swfs_ua" {
  provider = aws.swfs_ua
  name     = "grafana-cloud-integration"
  user     = aws_iam_user.grafana_cloud_user_swfs_ua.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:DescribeAlarmsForMetric",
                "cloudwatch:DescribeAlarmHistory",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricData",
                "cloudwatch:GetInsightRuleReport"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingLogsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "logs:DescribeLogGroups",
                "logs:GetLogGroupFields",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:GetQueryResults",
                "logs:GetLogEvents"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsInstancesRegionsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingResourcesForTags",
            "Effect": "Allow",
            "Action": "tag:GetResources",
            "Resource": "*"
        }
    ]
}
EOF
}