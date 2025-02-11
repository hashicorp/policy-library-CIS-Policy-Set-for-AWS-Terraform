# Cloudtrail S3 Bucket should not be public

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Security |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &cross;  |

## Description

DISCLAIMER - This policy works when all resources of type (aws_cloudtrail, aws_s3_bucket_public_access_block) are in the root module
and S3_bucket references could either be a string or reference to the aws_s3_bucket resource.
If the resources are in different modules, the policy will not work as expected. 

CloudTrail logs a record of every API call made in your account. These log files are stored in an S3 bucket. 
CIS recommends that the S3 bucket policy, or access control list (ACL), applied to the S3 bucket that CloudTrail 
logs to prevents public access to the CloudTrail logs. 
Allowing public access to CloudTrail log content might aid an adversary in identifying weaknesses in 
the affected account's use or configuration.

This rule is covered by the [cloudtrail-logs-bucket-not-public](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-logs-bucket-not-public.sentinel) policy.

## Policy Results (Pass)
```bash
trace: 

    Pass - cloudtrail-logs-bucket-not-public.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have private logs
      bucket

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy cloudtrail-logs-bucket-not-public.

    ✓ Found 0 resource violations

    cloudtrail-logs-bucket-not-public.sentinel:95:1 - Rule "main"
      Value:
        true

    cloudtrail-logs-bucket-not-public.sentinel:91:1 - Rule "ensure_private_logs_bucket"
      Value:
        true
```
---

## Policy Results (Fail)
```bash

trace:
    Fail - cloudtrail-logs-bucket-not-public.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have private logs
      bucket

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudtrail-logs-bucket-not-public.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_cloudtrail.cloudtrail-example
         | ✗ failed
         | S3 bucket used to store cloudtrail logs must not be publicly accessible. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudtrail-controls.html#cloudtrail-6 for more details.


    cloudtrail-logs-bucket-not-public.sentinel:95:1 - Rule "main"
      Value:
        false

    cloudtrail-logs-bucket-not-public.sentinel:91:1 - Rule "ensure_private_logs_bucket"
      Value:
        false
```

---