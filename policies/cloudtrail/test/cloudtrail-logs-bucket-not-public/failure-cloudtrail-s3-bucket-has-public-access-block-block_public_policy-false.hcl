mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-cloudtrail-s3-bucket-has-public-access-block-block-public-policy-false/mock-tfconfig-v2.sentinel"
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