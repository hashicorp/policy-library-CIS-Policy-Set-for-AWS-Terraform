# Cloudtrail S3 Bucket should have access logging enabled

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Security |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

DISCLAIMER - This policy works when all resources of type (aws_cloudtrail, aws_s3_bucket_logging) are in the root module
and S3_bucket references could either be a string or reference to the aws_s3_bucket resource.
If the resources are in different modules, the policy will not work as expected.

S3 bucket access logging generates a log that contains access records for each request made to your S3 bucket. 
An access log record contains details about the request, such as the request type, the resources specified in the request worked, 
and the time and date the request was processed.

CIS recommends that you enable bucket access logging on the CloudTrail S3 bucket.


This rule is covered by the [cloudtrail-bucket-access-logging-enabled](../../policies/cloudtrail-bucket-access-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - cloudtrail-bucket-access-logging-enabled.sentinel

    Description:
      This policy requires that resources of type `aws_cloudtrail` have bucket
      access logging enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy cloudtrail-bucket-access-logging-enabled.

    ✓ Found 0 resource violations

    cloudtrail-bucket-access-logging-enabled.sentinel:74:1 - Rule "main"
      Value:
        true
        
```
---

## Policy Results (Fail)
```bash
trace:
    Fail - cloudtrail-bucket-access-logging-enabled.sentinel

    Description:
      This policy requires that resources of type `aws_cloudtrail` have bucket
      access logging enabled.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudtrail-bucket-access-logging-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_cloudtrail.cloudtrail-example
         | ✗ failed
         | Cloudtrail S3 buckets must have access logging enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudtrail-controls.html#cloudtrail-7 for more details.


    cloudtrail-bucket-access-logging-enabled.sentinel:74:1 - Rule "main"
      Value:
        false

```

---