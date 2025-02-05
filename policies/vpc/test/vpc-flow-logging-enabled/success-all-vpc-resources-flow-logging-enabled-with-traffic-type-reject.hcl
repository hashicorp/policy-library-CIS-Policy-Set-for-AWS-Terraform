mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-all-vpc-resources-flow-logging-enabled-with-traffic-type-reject/mock-tfconfig-v2.sentinel"
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