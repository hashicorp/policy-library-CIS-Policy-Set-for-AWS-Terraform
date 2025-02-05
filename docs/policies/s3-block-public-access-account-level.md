# S3 general purpose buckets should have block public access settings enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &check;  |
| 3.0.0   | &cross;  |

## Description

This policy whether the Amazon S3 block public access settings are configured at the account level for an S3 general purpose bucket. The control fails if one or more of the block public access settings of the `aws_s3_account_public_access_block` are set to false.

The control fails if any of the settings are set to false, or if any of the settings are not configured.

This rule is covered by the [s3-block-public-access-account-level](../../policies/s3-block-public-access-account-level.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      s3-block-public-access-account-level.sentinel

      Description:
        This policy verifies if the attributes of 'aws_s3_account_public_access_block' resource (if present) are in accordance to AWS CIS standards.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-block-public-access-account-level.

      ✓ Found 0 resource violations

      s3-block-public-access-account-level.sentinel:50:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      s3-block-public-access-account-level.sentinel

      Description:
        This policy verifies if the attributes of 'aws_s3_account_public_access_block' resource (if present) are in accordance to AWS CIS standards.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-block-public-access-account-level.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_s3_account_public_access_block.setting
          | ✗ failed
          | Account level Amazon S3 block public access settings are not compliant. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-1 for more details.


      s3-block-public-access-account-level.sentinel:50:1 - Rule "main"
        Value:
          false
```

---