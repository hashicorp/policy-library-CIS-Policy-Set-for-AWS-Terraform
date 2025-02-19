# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

import "module" "tfplan-functions" {
  source = "./modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "tfconfig-functions" {
  source = "./modules/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "rds-encryption-at-rest-enabled" {
  source = "./policies/rds/rds-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-minor-version-upgrade-enabled" {
  source = "./policies/rds/rds-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-public-access-disabled" {
  source = "./policies/rds/rds-public-access-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "kms-key-rotation-enabled" {
  source = "./policies/kms/kms-key-rotation-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-ebs-encryption-enabled" {
  source = "./policies/ec2/ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-network-acl" {
  source = "./policies/ec2/ec2-network-acl.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-flow-logging-enabled" {
  source = "./policies/ec2/ec2-vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-default-security-group-no-traffic" {
  source = "./policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-metadata-imdsv2-required" {
  source = "./policies/ec2/ec2-metadata-imdsv2-required.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ipv4-ingress-traffic-restriction" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel"
  enforcement_level = "advisory"
  params = {
    prevent_unknown_ipv4_ingress = true
  }
}

policy "ec2-security-group-ipv6-ingress-traffic-restriction" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel"
  enforcement_level = "advisory"
  params = {
    prevent_unknown_ipv6_ingress = true
    prevent_unknown_ipv4_ingress = false
  }
}

policy "ec2-security-group-ingress-traffic-restriction-port-22" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel"
  enforcement_level = "advisory"
  params = {
    port = 22
  }
}

policy "ec2-security-group-ingress-traffic-restriction-port-3389" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel"
  enforcement_level = "advisory"
  params = {
    port = 3389
  }
}

policy "efs-encryption-at-rest-enabled" {
  source = "./policies/efs/efs-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "vpc-flow-logging-enabled" {
  source = "./policies/vpc/vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "s3-block-public-access-account-level" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}

policy "s3-block-public-access-bucket-level" {
  source = "./policies/s3/s3-block-public-access-bucket-level.sentinel"
  enforcement_level = "advisory"
}

policy "s3-require-mfa-delete" {
  source = "./policies/s3/s3-require-mfa-delete.sentinel"
  enforcement_level = "advisory"
}

policy "s3-require-ssl" {
  source = "./policies/s3/s3-require-ssl.sentinel"
  enforcement_level = "advisory"
}

policy "s3-enable-object-logging-for-write-events" {
  source = "./policies/s3/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "advisory"
  params = {
    event_type = "WriteOnly"
  }
}

policy "s3-enable-object-logging-for-read-events" {
  source = "./policies/s3/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "advisory"
  params = {
    event_type = "ReadOnly"
  }
}


policy "cloudtrail-server-side-encryption-enabled" {
  source = "./policies/cloudtrail/cloudtrail-server-side-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-log-file-validation-enabled" {
  source = "./policies/cloudtrail/cloudtrail-log-file-validation-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-cloudwatch-logs-group-arn-present" {
  source = "./policies/cloudtrail/cloudtrail-cloudwatch-logs-group-arn-present.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-logs-bucket-not-public" {
  source = "./policies/cloudtrail/cloudtrail-logs-bucket-not-public.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-bucket-access-logging-enabled" {
  source = "./policies/cloudtrail/cloudtrail-bucket-access-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-admin-privileges-allowed-by-policies" {
  source = "./policies/iam/iam-no-admin-privileges-allowed-by-policies.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-policies-attached-to-users" {
  source = "./policies/iam/iam-no-policies-attached-to-users.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-expiry" {
  source = "./policies/iam/iam-password-expiry.sentinel"
  enforcement_level = "advisory"
  params = {
    password_expiry_days = 90
  }
}

policy "iam-password-length" {
  source = "./policies/iam/iam-password-length.sentinel"
  enforcement_level = "advisory"
  params = {
    password_length = 14
  }
}

policy "iam-password-lowercase" {
  source = "./policies/iam/iam-password-lowercase.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-numbers" {
  source = "./policies/iam/iam-password-numbers.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-reuse" {
  source = "./policies/iam/iam-password-reuse.sentinel"
  enforcement_level = "advisory"
  params = {
    allowed_password_reuse_limit = 24
  }
}

policy "iam-password-symbols" {
  source = "./policies/iam/iam-password-symbols.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-uppercase" {
  source = "./policies/iam/iam-password-uppercase.sentinel"
  enforcement_level = "advisory"
}