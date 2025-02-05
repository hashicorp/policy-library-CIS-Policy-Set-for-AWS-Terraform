# AWS IAM Password Policy prevents password reuse

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

This control checks whether the number of passwords to remember is set to 24. The control fails if the value is not 24.

IAM password policies can prevent the reuse of a given password by the same user.

CIS recommends that the password policy prevent the reuse of passwords. Preventing password reuse increases account resiliency against brute force login attempts.

This rule is covered by the [iam-password-reuse](https://github.com/hashicorp/policy-library-cis-aws-iam-terraform/blob/main/policies/iam-password-reuse.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
  Pass - iam-password-reuse.sentinel

Description:
  This policy requires that the `password_reuse_prevention` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: true
This result means that all resources have passed the policy check for the policy iam-password-reuse.
✓ Found 0 resource violations

iam-password-reuse.sentinel:92:1 - Rule "main"
  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
 Fail - iam-password-reuse.sentinel

Description:
  This policy requires that the `password_reuse_prevention` attribute of the `aws_iam_account_password_policy` 
  resource is according to CIS standards.

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy iam-password-reuse.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_iam_account_password_policy.policy
     | ✗ failed
     | Attribute 'password_reuse_prevention' with value 25 must be equal to 24 for 'aws_iam_account_password_policy' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-16 for more details.


iam-password-reuse.sentinel:92:1 - Rule "main"
  Value:
    false
```

---