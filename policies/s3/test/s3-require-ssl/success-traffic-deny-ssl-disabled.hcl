mock "tfconfig/v2" {
  module {
    source = "./mocks/success-traffic-deny-ssl-disabled/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/success-traffic-deny-ssl-disabled/mock-tfstate-v2.sentinel"
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