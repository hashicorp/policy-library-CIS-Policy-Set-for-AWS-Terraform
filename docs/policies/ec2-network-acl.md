# AWS EC2 Network Acls should not allow ingress traffic from 0.0.0.0/0 or ::/0 to ports 22 or 3389

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

DISCLAIMER - This policy works when all resources of type aws_network_acl and aws_network_acl_rule have their `cidr_block` or `ipv6_cidr_block`
attributes set as a constant value.

This control checks whether a network access control list (NACL) allows unrestricted access to the default TCP ports for SSH/RDP ingress traffic. The rule fails if a NACL inbound entry allows a source CIDR block of '0.0.0.0/0' or '::/0' for TCP ports 22 or 3389.

Access to remote server administration ports, such as port 22 (SSH) and port 3389 (RDP), should not be publicly accessible, as this may allow unintended access to resources within your VPC

This rule is covered by the [ec2-network-acl](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-network-acl.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
  Pass - ec2-network-acl.sentinel

Description:
  This policy requires resources of type `aws_network_acl` and `aws_network_acl_rule` to block ingress traffic from unknown sources to the configured ports

Print messages:

→ → Overall Result: true
This result means that all resources have passed the policy check for the policy ec2-network-acl.
✓ Found 0 resource violations

ec2-network-acl.sentinel:96:1 - Rule "main"
  Value:
    true

ec2-network-acl.sentinel:92:1 - Rule "is_aws_network_acl_compliant"
  Description:
    Checks if 'aws_network_acl' resources block ingress traffic
    from unknown sources to the configured ports

  Value:
    true

ec2-network-acl.sentinel:86:1 - Rule "is_aws_network_acl_rule_compliant"
  Description:
    Checks if 'aws_network_acl_rule' resources block ingress traffic
    from unknown sources to the configured ports

  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
 Fail - ec2-network-acl.sentinel

Description:
  This policy requires resources of type `aws_network_acl` and `aws_network_acl_rule` to block ingress traffic from unknown sources to the configured ports

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-network-acl.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_network_acl_rule.rule1
     | ✗ failed
     | Network Acl rules should not allow ingress from 0.0.0.0/0 or ::/0 to ports 22,3389. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-21 for more details.


ec2-network-acl.sentinel:96:1 - Rule "main"
  Value:
    false

ec2-network-acl.sentinel:92:1 - Rule "is_aws_network_acl_compliant"
  Description:
    Checks if 'aws_network_acl' resources block ingress traffic
    from unknown sources to the configured ports

  Value:
    false

ec2-network-acl.sentinel:86:1 - Rule "is_aws_network_acl_rule_compliant"
  Description:
    Checks if 'aws_network_acl_rule' resources block ingress traffic
    from unknown sources to the configured ports

    Value:
      true
```

---