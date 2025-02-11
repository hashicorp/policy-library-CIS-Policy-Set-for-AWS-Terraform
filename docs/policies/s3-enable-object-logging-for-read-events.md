# Ensure that Object-level logging for read events is enabled for S3 buckets

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

S3 object-level API operations such as GetObject, DeleteObject, and PutObject are called data events. By default, CloudTrail trails don't log data events and so it is recommended to enable Object-level logging for S3 buckets.

This rule is covered by the [s3-enable-object-logging-for-events](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-enable-object-logging-for-events.sentinel) policy with the `event_type` parameter passed as `ReadOnly`.

## Policy Results (Pass)
```bash
trace:
      Pass - s3-enable-object-logging-for-read-events.sentinel

      Description:
        This policy requires resources of type 'aws_s3_bucket' have object logging
        enabled for read/write events.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-enable-object-logging-for-events.

      ✓ Found 0 resource violations

      s3-enable-object-logging-for-read-events.sentinel:95:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - s3-enable-object-logging-for-read-events.sentinel

      Description:
        This policy requires resources of type 'aws_s3_bucket' have object logging
        enabled for read/write events.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-enable-object-logging-for-events. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-23 for more details.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_s3_bucket.this
          | ✗ failed
          | Resources of type 'aws_s3_bucket' must have object logging enabled for write events through cloudtrail resources.


      s3-enable-object-logging-for-read-events.sentinel:89:1 - Rule "main"
        Value:
          false
```

---