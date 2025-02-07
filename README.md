# Pre-written Sentinel Policies for AWS CIS Foundations Benchmarking

Pre-written Sentinel policies are ready to use compliance checks for CIS AWS Foundations Benchmarking v1.2, v1.4 and v3.0 to help enable your AWS resources meet industry security standards.

At HashiCorp, we’re committed to making policy management easier for our customers. We understand that developing policies from scratch can be time-consuming and resource-intensive. To address this, we’re introducing our Prewritten Policy Libraries—expertly crafted, ready-to-use policies designed to streamline your compliance processes and enhance security across your infrastructure.

This repository contains several policies designed to accelerate the adoption of the CIS AWS Foundations Benchmark within HCP Terraform. These policies can be utilized to enforce best practices and security standards across your AWS environment.

For more details on how to work with these policies and to understand the Sentinel language and framework, please refer to the [Sentinel documentation](https://developer.hashicorp.com/sentinel/) or the README documentation included with each of the policy [libraries](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies).

## Feedback

We aim to validate the effectiveness of our policies by collecting diverse user feedback and understanding real-world use cases. This input will help refine our policies and enhance their overall impact.

1. If you have any issues or enhancement suggestions to the library, please create [a new GitHub issue](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/issues/new).

2. Alternatively, we welcome any contributions that improve the impact of this library! To learn more about contributing and suggesting changes to this library, refer to the [contributing guide](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/CONTRIBUTING.md).

### Policies Included

- Cloudtrail S3 Bucket should have access logging enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudtrail-bucket-access-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-bucket-access-logging-enabled.sentinel))
- Cloudtrail Cloudwatch Logs Group Arn is set ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudtrail-cloudwatch-logs-group-arn-present.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-cloudwatch-logs-group-arn-present.sentinel))
- Cloudtrail LogFile Validation is enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudtrail-log-file-validation-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-log-file-validation-enabled.sentinel))
- Cloudtrail S3 Bucket should not be public ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudtrail-logs-bucket-not-public.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-logs-bucket-not-public.sentinel))
- CloudTrail should have encryption at-rest enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudtrail-server-side-encryption-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudtrail/cloudtrail-server-side-encryption-enabled.sentinel))
- S3 general purpose buckets should have block public access settings enabled([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-block-public-access-account-level.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-block-public-access-account-level.sentinel))
- S3 general purpose buckets should have block public access settings enabled at a bucket level ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-block-public-access-bucket-level.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-block-public-access-bucket-level.sentinel))
- Ensure that Object-level logging for read events is enabled for S3 buckets ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-enable-object-logging-for-events.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-enable-object-logging-for-events.sentinel))
- Ensure that Object-level logging for write events is enabled for S3 buckets ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-enable-object-logging-for-events.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-enable-object-logging-for-events.sentinel))
- S3 general purpose buckets should have MFA delete enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-require-mfa-delete.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-require-mfa-delete.sentinel))
- S3 general purpose buckets should require ssl for all requests ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-require-ssl.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-require-ssl.sentinel))
- Ensure VPC flow logging is enabled in all VPCs ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/vpc-flow-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/vpc/vpc-flow-logging-enabled.sentinel))
- AWS EBS volume are encrypted ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-ebs-encryption-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-ebs-encryption-enabled.sentinel))
- Ensure that EC2 Metadata Service only allows IMDSv2 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-metadata-imdsv2-required.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-metadata-imdsv2-required.sentinel))
- AWS EC2 Network Acls should not allow ingress traffic from 0.0.0.0/0 or ::/0 to ports 22 or 3389 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-network-acl.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-network-acl.sentinel))
- AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to port 22 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ingress-traffic-restriction-port-22.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel))
- AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to port 3389 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ingress-traffic-restriction-port-3389.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel))
- AWS Security Group should not allow ingress traffic from 0.0.0.0/0 to port 22 and 3389 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ipv4-ingress-traffic-restriction.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel))
- AWS Security Group should not allow ingress traffic from ::/0 to port 22 and 3389 ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ipv6-ingress-traffic-restriction.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel))
- EC2 VPC Default Security Group No Traffic ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-vpc-default-security-group-no-traffic.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel))
- EC2 VPC Flow Logging Enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-vpc-flow-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-flow-logging-enabled.sentinel))
- IAM policies should not allow full "*" administrative privileges ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-no-admin-privileges-allowed-by-policies.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-no-admin-privileges-allowed-by-policies.sentinel))
- IAM users should not have IAM policies attached ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-no-policies-attached-to-users.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-no-policies-attached-to-users.sentinel))
- AWS IAM Password Policy should expire passwords within 90 days or less ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-expiry.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-expiry.sentinel))
- AWS IAM Password Policy requires minimum password length of 14 or greater ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-length.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-length.sentinel))
- AWS IAM Password Policy requires at least one lowercase letter ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-lowercase.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-lowercase.sentinel))
- AWS IAM Password Policy requires at least one number ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-numbers.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-numbers.sentinel))
- AWS IAM Password Policy prevents password reuse ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-reuse.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-reuse.sentinel))
- AWS IAM Password Policy requires at least one symbol ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-symbols.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-symbols.sentinel))
- AWS IAM Password Policy requires at least one uppercase letter ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-uppercase.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-uppercase.sentinel))
- Ensure that encryption is enabled for EFS file systems ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/efs-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/efs/efs-encryption-at-rest-enabled.sentinel))
- AWS KMS key rotation should be enabled ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/kms-key-rotation-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/kms/kms-key-rotation-enabled.sentinel))
- Ensure that encryption-at-rest is enabled for RDS Instances ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-encryption-at-rest-enabled.sentinel))
- Ensure Auto Minor Version Upgrade feature is Enabled for RDS Instances ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-minor-version-upgrade-enabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-minor-version-upgrade-enabled.sentinel))
- Ensure that public access is not given to RDS Instance ([docs](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-public-access-disabled.md) | [code](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-public-access-disabled.sentinel))


## Getting Started

This getting started guide assumes that:

1. You are familiar with core workflows in HCP Terraform and Terraform Enterprise, and you have an existing workspace configured with AWS access credentials.

   > **Tip:** If you do not have these prerequisites, please refer to the [Use VCS-Driven Workflow](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change) and [Create a Variable Set](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-create-variable-set) tutorials for guidance.

2. You have a user account that is part of the ["owners"](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/permissions#organization-owners) team or have ["Manage Policies"](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/permissions#manage-policies) organization-level permissions to create new policy sets and policies.

3. Ensure you are using HCP Terraform or Terraform Enterprise [v202312-1](https://developer.hashicorp.com/terraform/enterprise/releases/2023/v202312-1) or a later version.

4. You are using Sentinel version 0.26.x and later version.

By default, the module will enable all policies within the library, and they will be enforced by the HCP Platform with the `enforcement_level` set to `advisory` only.

**Example:**
```
policy "iam-password-expiry" {
  source = "./policies/iam/iam-password-expiry.sentinel"
  enforcement_level = "advisory"
  params = {
    password_expiry_days = 90
  }
}
```

If you want to enable only a subset of the policies or change the [enforcement levels](https://developer.hashicorp.com/sentinel/docs/concepts/enforcement-levels) to either `soft-mandatory` or `hard-mandatory`, we recommend updating the contents of the `sentinel.hcl` file in each library before applying the Terraform configuration.

> **Important:**
The policies in each library are opinionated and depend on several Sentinel modules. To learn more about modules, please refer to the [Sentinel module](https://developer.hashicorp.com/sentinel/docs/extending/modules) documentation.
>
To learn more about how to configure a policy set as a [policy evaluation](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#policy-evaluations), please review the Terraform Enterprise provider [documentation](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set#agent_enabled).

## Resources

- [Get Started - HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started)
- [Connecting VCS Providers to HCP Terraform](https://developer.hashicorp.com/terraform/cloud-docs/vcs)
- [Policy Enforcement](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement)
- [Managing Policy Sets](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets)
- [Introduction to Sentinel](https://developer.hashicorp.com/sentinel/intro/what)
- [Sentinel Documentation](https://developer.hashicorp.com/sentinel/docs)
- [Sentinel Language](https://developer.hashicorp.com/sentinel/docs/language/)
- [Sentinel Language Specification](https://developer.hashicorp.com/sentinel/docs/language/spec)
- [Policy Libraries](https://registry.terraform.io/browse/policies)
