# Ensure VPC flow logging is enabled in all VPCs

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Logging      |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &cross;  |
| 3.0.0   | &check;  |

## Description

VPC Flow Logs is a feature that enables you to capture information about the IP traffic going to and from network interfaces in your VPC. After you've created a flow log, you can view and retrieve its data in Amazon CloudWatch Logs. It is recommended that VPC Flow Logs be enabled for packet "Rejects" for VPCs.

This rule is covered by the [vpc-flow-logging-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/vpc/vpc-flow-logging-enabled.sentinel) policy.


## Policy Results (Pass)
```bash
trace:

    Pass - vpc-flow-logging-enabled.sentinel

    Description:
      This policy requires resources of type `aws_vpc` and `aws_default_vpc` to have
      flow logs enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy vpc-flow-logging-enabled

    ✓ Found 0 resource violations

    vpc-flow-logging-enabled.sentinel:60:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - vpc-flow-logging-enabled.sentinel

    Description:
      This policy requires resources of type `aws_vpc` and `aws_default_vpc` to have
      flow logs enabled.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for policy vpc-flow-logging-enabled

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_default_vpc.example_def_vpc
         | ✗ failed
         | VPC resources `aws_vpc` and `aws_default_vpc` must have flow logging.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-6 for more details.


    vpc-flow-logging-enabled.sentinel:60:1 - Rule "main"
      Value:
        false

```
---