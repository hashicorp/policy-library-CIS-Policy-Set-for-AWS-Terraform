# AWS KMS key rotation should be enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## CIS versions that include this policy

| Version | Included |
|---------|----------|
| 1.2.0   | &check;  |
| 1.4.0   | &check;  |
| 3.0.0   | &check;  |

## Description

AWS KMS enables customers to rotate the backing key, which is key material stored in AWS KMS and is tied to the key ID of the KMS key. It's the backing key that is used to perform cryptographic operations such as encryption and decryption. Automated key rotation currently retains all previous backing keys so that decryption of encrypted data can take place transparently.

CIS recommends that you enable KMS key rotation. Rotating encryption keys helps reduce the potential impact of a compromised key because data encrypted with a new key can't be accessed with a previous key that might have been exposed.

This rule is covered by the [kms-key-rotation-enabled](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-KMS-Terraform/blob/main/policies/kms-key-rotation-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      kms-key-rotation-enabled.sentinel

      Description:
        Key rotation must be enabled for resources of type 'aws_kms_key'

      Print messages:

      → → Overall Result: true
      
      This result means that all resources have passed the policy check for the policy kms-key-rotation-enabled.
      
      ✓ Found 0 resource violations

      kms-key-rotation-enabled.sentinel:48:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      kms-key-rotation-enabled.sentinel

      Description:
        Key rotation must be enabled for resources of type 'aws_kms_key'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy kms-key-rotation-enabled. 

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_kms_key.key
          | ✗ failed
          | Attribute 'enable_key_rotation' must be enabled for 'aws_kms_key' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/kms-controls.html#kms-4 for more details.


      kms-key-rotation-enabled.sentinel:48:1 - Rule "main"
        Value:
          false
```

---