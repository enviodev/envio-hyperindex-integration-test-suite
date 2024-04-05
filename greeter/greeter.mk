# greeter/greeter.mk

# Target: say_start_greeter_testing
say_start_greeter_testing:
	@echo "Starting Greeter integration tests..."

# todo: take relative path to local envio instance as env var
# Target: init_greeter
init_greeter:
	(cd greeter \
	&& cargo run --manifest-path $(PATH_TO_LOCAL_ENVIO) -- init -n ts -l typescript -d ./indexer \
	)

# Target: run_greeter
run_greeter:
	(cd greeter/indexer && envio dev) 

 # Target: run_e2e_greeter_integration_test (phony)
.PHONY: run_e2e_greeter_integration_test
run_e2e_greeter_integration_test: \
			say_start_greeter_testing \
			init_greeter \
			run_greeter