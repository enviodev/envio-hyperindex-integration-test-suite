include config.mk
include greeter/greeter.mk

say_start_testing:
	@echo "Starting integration tests..."

reset_all: 
	@echo "Resetting tests"
	rm -rf greeter/indexer

all: 	say_start_testing \
		reset_all \
		run_e2e_greeter_integration_test \
		@echo "All done!"