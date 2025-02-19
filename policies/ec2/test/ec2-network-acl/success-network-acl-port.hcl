mock "tfplan/v2" {
  module {
    source = "./mocks/success-network-acl-port/mock-tfplan-v2.sentinel"
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

param "blocked_ports" {
  value = [20]
}

test {
  rules = {
    main = true
  }
}
