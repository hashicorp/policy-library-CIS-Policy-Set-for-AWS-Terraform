mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-sg-rule-ipv6-source/mock-tfplan-v2.sentinel"
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

param "prevent_unknown_ipv6_ingress" {
  value = true
}


test {
  rules = {
    main = false
  }
}
