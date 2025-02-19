mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-undefined-key-rotation-attribute/mock-tfplan-v2.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../../modules/mocks/report/report.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../../modules/tfresources/tfresources.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
