# EC2 VPC Default Security Group No Traffic

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

DISCLAIMER - This policy will work well if resources of type `aws_vpc`, `aws_default_vpc`, `aws_default_security_group`,
`aws_security_group_rule`, `aws_vpc_security_group_ingress_rule`, and `aws_vpc_security_group_egress_rule`
are present in root module.

This policy checks whether the default security group of a VPC allows inbound or outbound traffic. 
The policy fails if the security group allows inbound or outbound traffic.

This rule is covered by the [ec2-vpc-default-security-group-no-traffic](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - ec2-vpc-default-security-group-no-traffic.sentinel

    Description:
    This policy requires resources of type `aws_vpc` to have no traffic for
    default security group.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-vpc-default-security-group-no-traffic.

    ✓ Found 0 resource violations

    ec2-vpc-default-security-group-no-traffic.sentinel:66:1 - Rule "main"
    Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:

    Fail - ec2-vpc-default-security-group-no-traffic.sentinel

    Description:
      This policy requires resources of type `aws_vpc` to have no traffic for
      default security group.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-vpc-default-security-group-no-traffic.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_vpc_security_group_ingress_rule.sgr1
         | ✗ failed
         | VPC default security group should not allow inbound and outbound traffic. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-2 for more details.


    ec2-vpc-default-security-group-no-traffic.sentinel:66:1 - Rule "main"
      Value:
        false
        
```
---