# Chirper
*You know, like the blue bird website...*

## Getting Started

This application was built using the very latest version of Ruby and Ruby on Rails at the time. These are as follows: 

* Ruby 2.4.0p0
* Rails 5.0.1

1. Get Chirper code

  ```
  git clone https://jackcutting.github.com/chirper.git
  ```

2. Get gems

  ```
  bundle install
  ```

3. Init the database

  ```
  rake db:create
  rake db:migrate
  rake db:seed
  ```

4. Run the server

  ```
  rails s
  ```

5. Open in browser

  ```
  open http://localhost:3000
  ```

## Running Tests

Unit and Feature testing has been implemented with RSpec and Capybara. These can be run easily using the following command: 

  ```
  rspec
  ```

Syntax testing can also be run via Rubocop by running the following command:

  ```
  rubocop
  ```
