mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-object-logging-for-write-events-multiple-buckets/mock-tfplan-v2.sentinel"
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

param "event_type" {
  value = "WriteOnly"
}

test {
  rules = {
    main = true
  }
}