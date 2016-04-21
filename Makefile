.PHONY: compile test clean

compile: rebar
	@./rebar get-deps
	@./rebar compile

test: rebar
	@./rebar get-deps
	@./rebar compile
	@./rebar skip_deps=true eunit
	@./rebar clean

clean: rebar
	@./rebar clean

deep-clean: clean
	@./rebar delete-deps

dev: compile
	@./start_dev.sh

rebar:
	@wget -q http://cloud.github.com/downloads/basho/rebar/rebar
	@chmod u+x rebar
