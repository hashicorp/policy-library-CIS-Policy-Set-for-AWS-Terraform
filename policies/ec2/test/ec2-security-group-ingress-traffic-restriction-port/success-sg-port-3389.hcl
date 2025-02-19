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

param "ensure_no_ingress_to_port_3389_from_unknown_sources" {
  value = true
}

param "port" {
  value = 3389
}

test {
  rules = {
    main = true
  }
}
