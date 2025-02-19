mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-sg-port/mock-tfplan-v2.sentinel"
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

param "prevent_unknown_ipv4_ingress" {
  value = true
}



test {
  rules = {
    main = true
  }
}
