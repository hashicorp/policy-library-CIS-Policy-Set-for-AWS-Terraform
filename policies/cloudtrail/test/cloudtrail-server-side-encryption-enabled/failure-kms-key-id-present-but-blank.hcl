mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-kms-key-id-present-but-blank/mock-tfconfig-v2.sentinel"
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


param "verify_encryption_enabled" {
  value = true
}

test {
  rules = {
    main = false
  }
}