mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-policy-with-multiple-statements-allow-admin-privileges/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/policy-failure-policy-with-multiple-statements-allow-admin-privileges/mock-tfstate-v2.sentinel"
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
