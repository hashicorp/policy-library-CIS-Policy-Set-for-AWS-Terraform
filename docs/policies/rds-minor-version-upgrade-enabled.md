# Ensure Auto Minor Version Upgrade feature is Enabled for RDS Instances

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

This control ensures that RDS database instances have the Auto Minor Version Upgrade flag enabled in order to receive automatically minor engine upgrades during the specified maintenance window. So, RDS instances can get the new features, bug fixes, and security patches for their database engines.

This rule is covered by the [rds-minor-version-upgrade-enabled](../../policies/rds-minor-version-upgrade-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      rds-minor-version-upgrade-enabled.sentinel

      Description:
        This policy requires resources of type 'aws_db_instance' have attribute 'auto_minor_version_upgrade' set to true.

      Print messages:

      → → Overall Result: true
      
      This result means that all resources have passed the policy check for the policy rds-minor-version-upgrade-enabled.
      
      ✓ Found 0 resource violations

      rds-minor-version-upgrade-enabled.sentinel:48:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      rds-minor-version-upgrade-enabled.sentinel

      Description:
        This policy requires resources of type 'aws_db_instance' have attribute 'auto_minor_version_upgrade' set to true.

      Print messages:

      → → Overall Result: false
      
      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-minor-version-upgrade-enabled.
      
      ✓ Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_db_instance.this
          | ✗ failed
          | Attribute 'auto_minor_version_upgrade' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-13 for more details.

      rds-minor-version-upgrade-enabled.sentinel:48:1 - Rule "main"
        Value:
          false
```

---