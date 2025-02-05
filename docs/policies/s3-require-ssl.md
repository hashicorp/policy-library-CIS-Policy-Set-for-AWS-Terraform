# S3 general purpose buckets should require ssl for all requests

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

DISCLAIMER - This policy works when all resources of type `aws_s3_bucket_policy` are present in the root module and have their `policy` attribute set using `aws_iam_policy_document` datasource.

This control checks whether an Amazon S3 general purpose bucket has a policy that requires requests to use SSL. The control fails if the bucket policy doesn't require requests to use SSL.

S3 buckets should have policies that require all requests (Action: S3:*) to only accept transmission of data over HTTPS in the S3 resource policy, indicated by the condition key aws:SecureTransport.

This rule is covered by the [s3-require-ssl](../../policies/s3-require-ssl.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      s3-require-ssl.sentinel

      Description:
        This policy mandates all requests to 'aws_s3_bucket' resources to use ssl using 'aws_s3_bucket_policy' resource.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-require-ssl.

      ✓ Found 0 resource violations

      s3-require-ssl.sentinel:119:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      s3-require-ssl.sentinel

      Description:
        This policy mandates all requests to 'aws_s3_bucket' resources to use ssl using 'aws_s3_bucket_policy' resource.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-require-ssl.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_s3_bucket.example
          | ✗ failed
          | S3 general purpose buckets should require requests to use SSL. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-5 for more details.


      s3-require-ssl.sentinel:119:1 - Rule "main"
        Value:
          false
```

---