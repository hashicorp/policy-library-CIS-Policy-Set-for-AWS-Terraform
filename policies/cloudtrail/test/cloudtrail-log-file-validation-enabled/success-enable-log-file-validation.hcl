mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-enable-log-file-validation/mock-tfplan-v2.sentinel"
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


param "verify_log_file_validation_is_enabled" {
  value = true
}

test {
  rules = {
    main = true
  }
}