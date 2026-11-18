# Copyright IBM Corp. 2025, 2026
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-object-prefix-is-not-bucket-wide/mock-tfplan-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../../modules/mocks/report/report.sentinel"
  }
}

param "event_type" {
  value = "ReadOnly"
}

test {
  rules = {
    main = false
  }
}
