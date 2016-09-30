tests: units printArt

units:
	@rspec

bundle:
	@bundle install

printArt:
	@./bin/printArt.sh

