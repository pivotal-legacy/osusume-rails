tests: setup units printArt

units:
	@rspec

bundle:
	@bundle install

printArt:
	@./bin/printArt.sh

setup:
	@rails db:drop RAILS_ENV=test
	@rails db:create RAILS_ENV=test
	@rails db:migrate RAILS_ENV=test

deploy:
	@cf push osusume-rails
