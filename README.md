# osusume-lunch-rails

## Description
This API provides restaurant lunch data as JSON (currently used by [osusume-lunch-ios](https://github.com/pivotal-tokyo/osusume-lunch-ios).

## Getting Started
This project requires Ruby 2.3.1, Rails 5.0.0.1, and Postgres 9.5.x.

1.) Install dependencies
```
bundle install
```

2.) Create the databases
```
rails db:create db:migrate
```

3.) Run the seeds file
```
rails db:seed
```

4.) Start the API
```
rails s
```

## Running Tests
```
rspec
```

## Deploying
We have deployed this API to Cloud Foundry. It is currently available at https://osusume-lunch.cfapps.io/.

Updates can be pushed by running:
```
make deploy
```
