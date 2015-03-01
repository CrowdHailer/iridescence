Iridescence
===========

#### Example web application built with Scorched
Visit setup branch to take project agnostic setup

- Includes procfile for thin on heroku 

Also used as the development enviroment for several Gems to encourage Domain Driven Design(DDD) in a rapid start up enviroment.

## Setup
Create a enviromental variables file for Dotenv `touch .env`

Run server with `rackup` or `shotgun` (for reloading)

#### Initialization
1. The `config.ru` loads the core application from `app/application.rb`
2. The core application file loads gems, sets up enviroment and loads lib directory with `config/boot.rb`
3. The application inherits from the base controller
4. The application loads and mounts all controllers

**NB**
1. All controllers should inherit from base controller where helper methods can be set
2. All by convention controllers each extend the view path with directory in their name

#### Tasks
All tasks are rake tasks loaded from the tasks directory

- List tasks `rake -T`
- Test all application code `rake test`
- Run test for single directory `rake test:<directory>`

**NB**
1. All test files must load test configuration
2. Controller tests must load application file

#### Tests
Test should inherit from *MyTest* this includes FactoryGirl methods and ensures that tests on the database are rolled back

#### Assets
Assets are available from `public`. To start purecss and font-awesome icons are included

## Framework

**[Scorched](http://scorchedrb.com/)** -- Scorched is a generic, unopinionated, DRY, light-weight web framework for Ruby. It provides a generic yet powerful set of constructs for processing HTTP requests, with which websites and applications of almost any scale can be built.

If you've used a light-weight DSL-based Ruby web framework before, such as Sinatra, Scorched should look quite familiar. Scorched is a true evolutionary enhancement of Sinatra, with more power, focus, and less clutter.

## Testing
**[Mini Test]()** -- A small and incredibly fast unit testing framework.
It provides a rich set of assertions to make your tests clean and
readable.
