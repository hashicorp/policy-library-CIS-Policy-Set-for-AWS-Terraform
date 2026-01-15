mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-s3-traffic-deny-enabled-with-datasource-in-config/mock-tfconfig-v2.sentinel"
	}
}


mock "tfstate/v2" {
	module {
		source = "./mocks/policy-success-s3-traffic-deny-enabled-with-datasource-in-config/mock-tfstate-v2.sentinel"
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