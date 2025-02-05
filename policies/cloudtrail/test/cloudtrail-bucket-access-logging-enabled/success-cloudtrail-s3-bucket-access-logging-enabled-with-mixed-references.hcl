mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-cloudtrail-s3-bucket-access-logging-enabled-with-mixed-references/mock-tfconfig-v2.sentinel"
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
    main = true
  }
}