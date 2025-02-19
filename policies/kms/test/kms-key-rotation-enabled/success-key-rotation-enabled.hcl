mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success/mock-tfplan-v2.sentinel"
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
    main = true
  }
}
