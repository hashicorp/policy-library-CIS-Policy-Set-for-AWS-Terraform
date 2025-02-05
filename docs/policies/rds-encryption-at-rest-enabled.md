# Ensure that encryption-at-rest is enabled for RDS Instances

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

Amazon RDS encrypted DB instances use the industry standard AES-256 encryption algorithm to encrypt your data on the server that hosts your Amazon RDS DB instances. After your data is encrypted, Amazon RDS handles authentication of access and decryption of your data transparently with a minimal impact on performance.

This rule is covered by the [rds-encryption-at-rest-enabled](../../policies/rds-encryption-at-rest-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - rds-encryption-at-rest-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled.

    ✓ Found 0 resource violations

    rds-encryption-at-rest-enabled.sentinel:45:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - rds-encryption-at-rest-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'storage_encrypted' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-3 for more details.


    rds-encryption-at-rest-enabled.sentinel:45:1 - Rule "main"
      Value:
        false
        
```

---