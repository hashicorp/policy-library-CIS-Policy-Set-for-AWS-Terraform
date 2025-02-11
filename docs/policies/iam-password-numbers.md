# AWS IAM Password Policy requires at least one number

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Identity     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &cross;  |
| 3.0.0   | &cross;  |

## Description

Password policies, in part, enforce password complexity requirements. Use IAM password policies to ensure that passwords use different character sets.

CIS recommends that the password policy require at least one number. Setting a password complexity policy increases account resiliency against brute force login attempts.

This rule is covered by the [iam-ensure-password-numbers-policy](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-numbers.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
  Pass - iam-ensure-password-numbers-policy.sentinel

Description:
  This policy requires that the `require_numbers` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: true
This result means that all resources have passed the policy check for the policy iam-ensure-password-numbers-policy.
✓ Found 0 resource violations

iam-ensure-password-numbers-policy.sentinel:92:1 - Rule "main"
  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
 Fail - iam-ensure-password-numbers-policy.sentinel

Description:
  This policy requires that the `require_numbers` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy iam-ensure-password-numbers-policy.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_iam_account_password_policy.policy
     | ✗ failed
     | Attribute 'require_numbers' must be equal to true for 'aws_iam_account_password_policy' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-14 for more details.


iam-ensure-password-numbers-policy.sentinel:92:1 - Rule "main"
  Value:
    false
```

---