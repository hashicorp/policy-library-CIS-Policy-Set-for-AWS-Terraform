# IAM policies should not allow full "*" administrative privileges

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

This policy checks whether the default version of IAM policies (also known as customer managed policies) has administrator access by including a statement with "Effect": "Allow" with "Action": "*" over "Resource": "*". The policy fails if you have IAM policy documents with such a statement.

The control only checks the customer managed policies that you create with the `aws_iam_policy_document` datasource. It does not verify the AWS managed/inline policy blocks.

IAM policies define a set of privileges that are granted to users, groups, or roles. Following standard security advice, AWS recommends that you grant least privilege, which means to grant only the permissions that are required to perform a task. When you provide full administrative privileges instead of the minimum set of permissions that the user needs, you expose the resources to potentially unwanted actions.

Instead of allowing full administrative privileges, determine what users need to do and then craft policies that let the users perform only those tasks. It is more secure to start with a minimum set of permissions and grant additional permissions as necessary. Do not start with permissions that are too lenient and then try to tighten them later.

This rule is covered by the [iam-no-admin-privileges-allowed-by-policies](https://github.com/hashicorp/policy-library-cis-aws-iam-terraform/blob/main/policies/iam-no-admin-privileges-allowed-by-policies.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
        iam-no-admin-privileges-allowed-by-policies.sentinel

        Description:
            IAM policies should not allow administrator privileges to users/roles/groups.

        Print messages:

        → → Overall Result: true
        This result means that all resources have passed the policy check for the policy iam-no-admin-privileges-allowed-by-policies.
        ✓ Found 0 resource violations

        iam-no-admin-privileges-allowed-by-policies.sentinel:99:1 - Rule "main"
            Value:
                true

        iam-no-admin-privileges-allowed-by-policies.sentinel:95:1 - Rule "check_inline_policies"
            Value:
                true

        iam-no-admin-privileges-allowed-by-policies.sentinel:91:1 - Rule "check_policy_documents"
            Value:
                true
```

---

## Policy Results (Fail)
```bash
trace:
        iam-no-admin-privileges-allowed-by-policies.sentinel

        Description:
            IAM policies should not allow administrator privileges to user/roles/groups.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy iam-no-admin-privileges-allowed-by-policies.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_iam_policy_document.policy_one
            | ✗ failed
            | IAM policies should not be allow full '*' administrative privileges. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-1 for more details.


        iam-no-admin-privileges-allowed-by-policies.sentinel:99:1 - Rule "main"
            Value:
                false

        iam-no-admin-privileges-allowed-by-policies.sentinel:95:1 - Rule "check_inline_policies"
            Value:
                true

        iam-no-admin-privileges-allowed-by-policies.sentinel:91:1 - Rule "check_policy_documents"
            Value:
                false
```

---