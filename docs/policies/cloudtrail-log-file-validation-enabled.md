# Cloudtrail LogFile Validation is enabled

| Provider            | Category                |
|---------------------|-------------------------|
| Amazon Web Services | Management & Governance |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

CIS recommends for every Cloudtrail log file integrity validation is enabled. 

This policy verifies whether log file validation for a given Cloud trail resource is enabled. 
The policy fails if the `enable_log_file_validation` isn't enabled for the given `aws_cloudtrail` resource.

This rule is covered by the [cloudtrail-log-file-validation-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-log-file-validation-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - cloudtrail-log-file-validation-enabled.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have log file
      validation enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy cloudtrail-log-file-validation-enabled.

    ✓ Found 0 resource violations

    cloudtrail-log-file-validation-enabled.sentinel:37:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - cloudtrail-log-file-validation-enabled.sentinel

    Description:
      This policy requires resources of type `aws_cloudtrail` to have log file
      validation enabled.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudtrail-log-file-validation-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_cloudtrail.example
         | ✗ failed
         | Attribute 'enable_log_file_validation' must be true for 'aws_cloudtrail' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudtrail-controls.html#cloudtrail-4 for more details.


    cloudtrail-log-file-validation-enabled.sentinel:37:1 - Rule "main"
      Value:
        false

```
---