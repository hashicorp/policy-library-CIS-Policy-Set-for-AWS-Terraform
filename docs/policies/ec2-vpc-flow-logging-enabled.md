# EC2 VPC Flow Logging Enabled

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |


## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &cross;  |

## Description

DISCLAIMER - This policy will work well if `aws_flow_log` resource attribute `vpc_id` 
refers to the `aws_vpc` resource attribute `id` or `aws_default_vpc` resource attribute `id`.

This policy checks whether Amazon VPC Flow Logs are found and enabled for VPCs. The traffic type is set to Reject or All.

This rule is covered by the [ec2-vpc-flow-logging-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-flow-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - ec2-vpc-flow-logging-enabled.sentinel

    Description:
      This policy requires resources of type `aws_vpc` and `aws_default_vpc` to have
      flow logs enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-vpc-flow-logging-enabled

    ✓ Found 0 resource violations

    ec2-vpc-flow-logging-enabled.sentinel:60:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-vpc-flow-logging-enabled.sentinel

    Description:
      This policy requires resources of type `aws_vpc` and `aws_default_vpc` to have
      flow logs enabled.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for policy ec2-vpc-flow-logging-enabled

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_default_vpc.example_def_vpc
         | ✗ failed
         | VPC resources `aws_vpc` and `aws_default_vpc` must have flow logging. https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-6 for more details.


    ec2-vpc-flow-logging-enabled.sentinel:60:1 - Rule "main"
      Value:
        false

```
---