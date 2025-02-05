# AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to port 3389

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &cross;  |
| 3.0.0   | &cross;  |

## Description

DISCLAIMER - This policy works when all resources of type aws_security_group, aws_security_group_rule and aws_vpc_security_group_ingress_rule 
have their `cidr_blocks`,`ipv6_cidr_blocks`,`cidr_ipv4` or `cidr_ipv6`  attributes set as a constant value.

This control checks whether an Amazon EC2 security group allows ingress from 0.0.0.0/0 or ::/0 to port 3389. The control fails if the security group allows ingress from 0.0.0.0/0 or ::/0 to port 3389.

Security groups provide stateful filtering of ingress and egress network traffic to AWS resources. We recommend that no security group allow unrestricted ingress access to port 3389. Removing unfettered connectivity to remote console services, such as RDP, reduces a server's exposure to risk.

This rule is covered by the [ec2-security-group-ingress-traffic-restriction](https://github.com/hashicorp/policy-library-cis-aws-ec2-terraform/tree/main/policies/ec2-security-group-ingress-traffic-restriction-port.sentinel) policy when the `port` parameter is passed as `3389`.

## Policy Results (Pass)
```bash
trace:
  Pass - ec2-security-group-ingress-traffic-restriction.sentinel

Description:
  This policy requires resources of type `aws_security_group`, `aws_security_group_rule` and `aws_vpc_security_group_ingress_rule`
  block ingress traffic from unknown sources to the configured port

Print messages:

→ → Overall Result: true
This result means that all resources have passed the policy check for the policy enforce-security-group-ingress-traffic-restriction-port-3389.
✓ Found 0 resource violations

ec2-security-group-ingress-traffic-restriction.sentinel:110:1 - Rule "main"
  Value:
    true

ec2-security-group-ingress-traffic-restriction.sentinel:100:1 - Rule "is_aws_security_group_compliant"
  Description:
    Checks if 'aws_security_group' resources block ingress traffic
    from unknown sources to the configured port

  Value:
    true

ec2-security-group-ingress-traffic-restriction.sentinel:94:1 - Rule "is_aws_security_group_rule_compliant"
  Description:
    Checks if 'aws_security_group_rule' resources block ingress
    traffic
    from unknown sources to the configured port

  Value:
    true

ec2-security-group-ingress-traffic-restriction.sentinel:106:1 - Rule "is_aws_vpc_security_group_ingress_rule_compliant"
  Description:
    Checks if 'aws_vpc_security_group_ingress_rule' resources block
    ingress traffic
    from unknown sources to the configured port

  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
 Fail - ec2-security-group-ingress-traffic-restriction.sentinel

Description:
  This policy requires resources of type `aws_security_group`, `aws_security_group_rule` and `aws_vpc_security_group_ingress_rule`
  block ingress traffic from unknown sources to the configured port

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy enforce-security-group-ingress-traffic-restriction-port-3389.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_security_group.sg
     | ✗ failed
     | Security group should not allow ingress from 0.0.0.0/0 or ::/0 to port 3389. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-14 for more details.


ec2-security-group-ingress-traffic-restriction.sentinel:110:1 - Rule "main"
  Value:
    false

ec2-security-group-ingress-traffic-restriction.sentinel:100:1 - Rule "is_aws_security_group_compliant"
  Description:
    Checks if 'aws_security_group' resources block ingress traffic
    from unknown sources to the configured port

  Value:
    true

ec2-security-group-ingress-traffic-restriction.sentinel:94:1 - Rule "is_aws_security_group_rule_compliant"
  Description:
    Checks if 'aws_security_group_rule' resources block ingress
    traffic
    from unknown sources to the configured port

  Value:
    true

ec2-security-group-ingress-traffic-restriction.sentinel:106:1 - Rule "is_aws_vpc_security_group_ingress_rule_compliant"
  Description:
    Checks if 'aws_vpc_security_group_ingress_rule' resources block
    ingress traffic
    from unknown sources to the configured port

  Value:
    false
```

---