# Ensure that encryption is enabled for EFS file systems

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &cross;  |
| 3.0.0   | &check;  |

## Description

This controls ensures that EFS data should be encrypted at rest using AWS KMS.

This rule is covered by the [efs-encryption-at-rest-enabled](https://github.com/hashicorp/policy-library-cis-aws-efs-terraform/blob/main/policies/efs-encryption-at-rest-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - efs-encryption-at-rest-enabled.sentinel

      Description:
        This policy requires that resources of type `aws_efs_file_system` encryption
        at rest enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy efs-encryption-at-rest-enabled.

      ✓ Found 0 resource violations

      efs-encryption-at-rest-enabled.sentinel:80:1 - Rule "main"
        Value:
          true

      efs-encryption-at-rest-enabled.sentinel:76:1 - Rule "verify_kms_key_referencing_file_systems"
        Value:
          true

      efs-encryption-at-rest-enabled.sentinel:72:1 - Rule "verify_non_encrypted_file_systems"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - efs-encryption-at-rest-enabled.sentinel

      Description:
        This policy requires that resources of type `aws_efs_file_system` encryption
        at rest enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy efs-encryption-at-rest-enabled.

      Found 2 resource violations

      → Module name: root
        ↳ Resource Address: aws_efs_file_system.this
          | ✗ failed
          | Attribute 'encrypted' should be true for 'aws_efs_file_system' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/efs-controls.html#efs-1 for more details.
        ↳ Resource Address: aws_efs_file_system.this
          | ✗ failed
          | Attribute 'kms_key_id' should be non empty for 'aws_efs_file_system' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/efs-controls.html#efs-1 for more details.


      efs-encryption-at-rest-enabled.sentinel:80:1 - Rule "main"
        Value:
          false

      efs-encryption-at-rest-enabled.sentinel:72:1 - Rule "verify_non_encrypted_file_systems"
        Value:
          false
```

---