mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-all-vpc-resources-flow-logging-enabled-with-traffic-type-all/mock-tfconfig-v2.sentinel"
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