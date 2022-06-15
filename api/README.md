<p align="center">
  <img src="/assets/Logo.svg" width="400" alt="Meilisearch" />
</p>

# Seal Fighter V

# API (back-end)

This directory contains the source code of a basic [Ruby on Rails](https://rubyonrails.org/) application, designed as an HTTP API for this technical test.

## Set up your environment

### Install Ruby and Ruby on Rails

Make sure you have [Ruby](https://www.ruby-lang.org/en/) installed on your environment.
We advise you to use a Version manager as [RVM](https://github.com/rvm/rvm).
The ruby version this project uses is specified in the [.ruby_version](.ruby_version) file.

Then install Ruby on Rails by running the command:

```bash
gem install rails
```

### Set up the project

Install the dependencies by running the following command on the `/api` directory:

```bash
bundle install
```

Then create the database, apply migrations and seed the database as follows:

```bash
rails db:create
rails db:migrate
rails db:seed
```

## Run the API

You can now run the API (it will default to the port `8888`)

```bash
rails s
```

# Development

We have created a simple CI that run tests and runs a linter to check the code quality and functionality.

## Run the linter

```bash
# Without autocorrect
bundle exec rubocop

# With autocorrect
bundle exec rubocop -a
```

## Run the tests

```bash
bundle exec rspec
```
