# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-sg-ingress-port/mock-tfplan-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "./mocks/report-assertion-ipv4/report.sentinel"
  }
}

param "prevent_unknown_ipv6_ingress" {
  value = false
}

param "prevent_unknown_ipv4_ingress" {
  value = true
}

test {
  rules = {
    main = false
  }
}
