# Cloudtrail Cloudwatch Logs Group Arn is set

| Provider            | Category                |
|---------------------|-------------------------|
| Amazon Web Services | Management & Governance |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &cross;  |

## Description

CIS recommends for every CloudTrail trails should be integrated with Amazon CloudWatch Logs

This policy checks whether CloudTrail trails are configured to send logs to CloudWatch Logs. 
The policy fails if the `cloud_watch_logs_group_arn` attribute of the `aws_cloudtrail` resource is empty.

This rule is covered by the [cloudtrail-cloudwatch-logs-group-arn-present](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-cloudwatch-logs-group-arn-present.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - cloudtrail-cloudwatch-logs-group-arn-present.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have cloudwatch log
      group arn set.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy cloudtrail-cloudwatch-logs-group-arn-present.

    ✓ Found 0 resource violations

    cloudtrail-cloudwatch-logs-group-arn-present.sentinel:53:1 - Rule "main"
      Value:
        true

    cloudtrail-cloudwatch-logs-group-arn-present.sentinel:49:1 - Rule "ensure_cloudwatch_log_groups_arn_is_set"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - cloudtrail-cloudwatch-logs-group-arn-present.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have cloudwatch log for the policy cloudtrail-cloudwatch-logs-group-arn-present.
      group arn set.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_cloudtrail.example
         | ✗ failed
         | Attribute 'cloud_watch_logs_group_arn' must be present for 'aws_cloudtrail' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudtrail-controls.html#cloudtrail-5 for more details.


    cloudtrail-cloudwatch-logs-group-arn-present.sentinel:53:1 - Rule "main"
      Value:
        false

    cloudtrail-cloudwatch-logs-group-arn-present.sentinel:49:1 - Rule "ensure_cloudwatch_log_groups_arn_is_set"
      Value:
        false
```

---