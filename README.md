# README

## Development

1. Clone the repo and change into the directory 

> git clone https://github.com/tsharliz-Joma/FlexedUp.git
> cd Flexedup

2. Install dependencies

* Install rbenv *
`brew install rbenv`
`rbenv install 3.1.0`
`rbenv global 3.1.0` 

* Install Rails *
> `gem install rails`

* Install bundler *
> `gem intall bundler`

3. Install App Dependencies 
> `bundle install`

4. Setup the database 

* Create the database *
> `rails db:create`

* Run migrations *
> `rails db:migrate`

* (Optional) Seed the database with initial data *

> `rails db:seed` 

5. Start rails server

> `rails server`

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
