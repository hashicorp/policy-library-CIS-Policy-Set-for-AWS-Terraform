# CloudTrail should have encryption at-rest enabled

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

CIS recommends that every Cloudtrail has KmsKeyId set. 

This policy verifies whether the `aws_cloudtrail` is configured to use the server-side encryption (SSE) AWS KMS key encryption. 
The policy fails if the `kms_key_id` attribute isn't defined for the resource.

This rule is covered by the [cloudtrail-server-side-encryption-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-server-side-encryption-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - cloudtrail-server-side-encryption-enabled.sentinel

    Description:
      This policy requires that resources of type `aws_cloudtrail` have server-side
      encryption enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy cloudtrail-server-side-encryption-enabled.

    ✓ Found 0 resource violations

    cloudtrail-server-side-encryption-enabled.sentinel:37:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:

    Fail - cloudtrail-server-side-encryption-enabled.sentinel

    Description:
      This policy requires that resources of type `aws_cloudtrail` have server-side
      encryption enabled.
      
    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudtrail-server-side-encryption-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_cloudtrail.example
         | ✗ failed
         | Attribute 'kms_key_id' must be present for 'aws_cloudtrail' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudtrail-controls.html#cloudtrail-2 for more details.


    cloudtrail-server-side-encryption-enabled.sentinel:37:1 - Rule "main"
      Value:
        false

```

---