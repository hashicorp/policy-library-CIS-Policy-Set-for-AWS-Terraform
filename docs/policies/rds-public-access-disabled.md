# Ensure that public access is not given to RDS Instance

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

This control ensures and verifies that RDS database instances provisioned in your AWS account do restrict unauthorized access in order to minimize security risks. To restrict access to any publicly accessible RDS database instance, you must disable the database Publicly Accessible flag and update the VPC security group associated with the instance.

This rule is covered by the [rds-public-access-disabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-public-access-disabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      rds-public-access-disabled.sentinel

      Description:
        This policy requires resources of type 'aws_db_instance' have attribute 'publicly_accessible' set to false.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-public-access-disabled.

      ✓ Found 0 resource violations

      rds-public-access-disabled.sentinel:44:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      rds-public-access-disabled.sentinel

      Description:
        This policy requires resources of type 'aws_db_instance' have attribute 'publicly_accessible' set to false.

      Print messages:

      → → Overall Result: false

      
      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-public-access-disabled.

      ✓ Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_db_instance.this
          | ✗ failed
          | Attribute 'publicly_accessible' must be set to false for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-2 for more details.

      rds-public-access-disabled:44:1 - Rule "main"
        Value:
          false
```

---