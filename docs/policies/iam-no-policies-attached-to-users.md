# IAM users should not have IAM policies attached

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

This policy checks whether your IAM users have policies attached. The policy fails if your IAM users have policies attached. Instead, IAM users must inherit permissions from IAM groups or assume a role.

By default, IAM users, groups, and roles have no access to AWS resources. IAM policies grant privileges to users, groups, or roles. AWS CIS foundation framework recommends that you apply IAM policies directly to groups and roles but not to users. Assigning privileges at the group or role level reduces the complexity of access management as the number of users grows. Reducing access management complexity might in turn reduce the opportunity for a principal to inadvertently receive or retain excessive privileges.

This rule is covered by the [iam-no-policies-attached-to-users](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-no-policies-attached-to-users.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      iam-no-policies-attached-to-users.sentinel

      Description:
        IAM users should not be directly attached to IAM policies.

      Print messages:

      → → Overall Result: true
      This result means that all resources have passed the policy check for the policy iam-no-policies-attached-to-users.
      ✓ Found 0 resource violations

      iam-no-policies-attached-to-users.sentinel:37:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      iam-no-policies-attached-to-users.sentinel

      Description:
        IAM users should not be directly attached to IAM policies.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed  for the policy iam-no-policies-attached-to-users.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_iam_user_policy.lb_ro
          | ✗ failed
          | IAM policies should not be attached directly to IAM users. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-2 for more details.


      iam-no-policies-attached-to-users.sentinel:37:1 - Rule "main"
        Value:
          false
```

---