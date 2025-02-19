mock "tfplan/v2" {
  module {
    source = "./mocks/success-network-acl-rule-source-ipv4/mock-tfplan-v2.sentinel"
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
  value = [22]
}

test {
  rules = {
    main = true
  }
}
