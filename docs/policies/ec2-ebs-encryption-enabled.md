# AWS EBS volume are encrypted

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

This control checks whether encryption is enabled for Amazon Elastic Block Store(Amazon EBS).

This rule is covered by the [ec2-ebs-encryption-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-ebs-encryption-enabled.sentinel) policy.

## Policy Results (Pass)
```bash

trace:

    Pass - ec2-ebs-encryption-enabled.sentinel

    Description:
      This policy requires resources of type `aws_ebs_volume` have the `encrypted`
      attribute set to `true`.    
      
    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-ebs-encryption-enabled.

    ✓ Found 0 resource violations

    ec2-ebs-encryption-enabled.sentinel:46:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-ebs-encryption-enabled.sentinel

    Description:
      This policy requires resources of type `aws_ebs_volume` have the `encrypted`
      attribute set to `true`.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-ebs-encryption-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_ebs_volume.ebs
         | ✗ failed
         | Attribute 'encrypted' must be set to true for 'aws_ebs_volume' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-7 for more details.


    ec2-ebs-encryption-enabled.sentinel:46:1 - Rule "main"
      Value:
        false

```

---