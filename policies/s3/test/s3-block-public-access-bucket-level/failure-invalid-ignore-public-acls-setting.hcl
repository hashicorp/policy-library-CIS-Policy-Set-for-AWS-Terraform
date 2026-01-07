# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-invalid-ignore-public-acls-setting/mock-tfplan-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-invalid-ignore-public-acls-setting/mock-tfconfig-v2.sentinel"
  }
}

mock "tfconfig-functions" {
  module {
    source = "../../../../modules/tfconfig-functions/tfconfig-functions.sentinel"
  }
}

mock "tfplan-functions" {
  module {
    source = "../../../../modules/tfplan-functions/tfplan-functions.sentinel"
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

test {
 rules = {
    main = false
  }
}