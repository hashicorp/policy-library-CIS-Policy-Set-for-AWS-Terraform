# Ensure that EC2 Metadata Service only allows IMDSv2

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &cross;  |
| 1.4.0   | &cross;  |
| 3.0.0   | &check;  |

## Description

This controls ensures that Ec2 metadata service only allows IMDSv2. With IMDSv2, every request is now protected by session authentication.

This rule is covered by the [ec2-metadata-imdsv2-required](https://github.com/hashicorp/policy-library-cis-aws-ec2-terraform/tree/main/policies/ec2-metadata-imdsv2-required.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - ec2-metadata-imdsv2-required.sentinel

    Description:
    This policy requires resources of type 'aws_instance' or
    'aws_ec2_instance_metadata_defaults' to have 'http_tokens' attribute set to
    'required'.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-metadata-imdsv2-required.

    ✓ Found 0 resource violations

    ec2-metadata-imdsv2-required.sentinel:61:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-metadata-imdsv2-required.sentinel

    Description:
    This policy requires resources of type 'aws_instance' or
    'aws_ec2_instance_metadata_defaults' to have 'http_tokens' attribute set to
    'required'.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-metadata-imdsv2-required.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_instance.example
        | ✗ failed
        | Attribute 'http_tokens' must be set to 'required' for all 'aws_instance' resources if 'metadata_options' is used.Else 'aws_ec2_instance_metadata_defaults' resource should have 'http_tokens' set to 'required'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-8 for more details.


    ec2-metadata-imdsv2-required.sentinel:61:1 - Rule "main"
    Value:
        false
```

---