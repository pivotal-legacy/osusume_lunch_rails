tests: bundle setup units printArt

units:
	@bundle exec rspec

bundle:
	@bundle install

printArt:
	@./bin/printArt.sh

setup:
	@bundle exec rails db:drop RAILS_ENV=test
	@bundle exec rails db:create RAILS_ENV=test
	@bundle exec rails db:migrate RAILS_ENV=test

deploy:
	@cf push osusume_lunch_rails
