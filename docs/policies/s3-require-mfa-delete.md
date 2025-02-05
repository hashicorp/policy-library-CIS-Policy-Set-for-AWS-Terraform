# S3 general purpose buckets should have MFA delete enabled

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

DISCLAIMER - This policy works when all resources are present in root module

This control checks whether multi-factor authentication (MFA) delete is enabled on an Amazon S3 general purpose bucket. The control fails if MFA delete is not enabled on the bucket.

When working with S3 Versioning in Amazon S3 buckets, you can optionally add another layer of security by configuring a bucket to enable MFA delete. When you do this, the bucket owner must include two forms of authentication in any request to delete a version or change the versioning state of the bucket. MFA delete provides added security if your security credentials are compromised. MFA delete can also help prevent accidental bucket deletions by requiring the user who initiates the delete action to prove physical possession of an MFA device with an MFA code and adding an extra layer of friction and security to the delete action.

This rule is covered by the [s3-require-mfa-delete](../../policies/s3-require-mfa-delete.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      s3-require-mfa-delete.sentinel

      Description:
        This policy verifies that all general purpose s3 buckets should have MFA delete enabled in their versioning configuration

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-require-mfa-delete.

      ✓ Found 0 resource violations

      s3-require-mfa-delete.sentinel:69:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      s3-require-mfa-delete.sentinel

      Description:
        This policy verifies that all general purpose s3 buckets should have MFA delete enabled in their versioning configuration

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-require-mfa-delete.

      Found 1 resource violations

      → Module name: root
         ↳ Resource Address: aws_s3_bucket_versioning.example
           | ✗ failed
           | All 'aws_s3_bucket' resources should be linked to 'aws_s3_bucket_versioning' resources with 'mfa_delete' set to 'Enabled'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-20 for more details.

      s3-require-mfa-delete.sentinel:69:1 - Rule "main"
        Value:
          false
```

---