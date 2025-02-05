# AWS IAM Password Policy requires minimum password length of 14 or greater

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Identity     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

Password policies, in part, enforce password complexity requirements. Use IAM password policies to ensure that passwords are at least a given length.

CIS recommends that the password policy require a minimum password length of 14 characters. Setting a password complexity policy increases account resiliency against brute force login attempts.

This rule is covered by the [iam-ensure-password-length-policy](https://github.com/hashicorp/policy-library-cis-aws-iam-terraform/blob/main/policies/iam-ensure-password-length-policy.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
  Pass - iam-ensure-password-length-policy.sentinel

Description:
  This policy requires that the `minimum_password_length` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: true
This result means that all resources have passed the policy check for the policy iam-ensure-password-length-policy.
✓ Found 0 resource violations

iam-ensure-password-length-policy.sentinel:92:1 - Rule "main"
  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
 
Fail - iam-ensure-password-length-policy.sentinel

Description:
  This policy requires that the `minimum_password_length` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy iam-ensure-password-length-policy.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_iam_account_password_policy.policy
     | ✗ failed
     | Attribute 'minimum_password_length' with value 6 must be greater than or equal to 14 for 'aws_iam_account_password_policy' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-15 for more details.


iam-ensure-password-length-policy.sentinel:92:1 - Rule "main"
  Value:
    false
```

---