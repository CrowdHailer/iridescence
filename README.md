Iridescence
===========

#### Example web application built with Scorched
Visit setup branch to take project agnostic setup

Also used as the development enviroment for several Gems to encourage Domain Driven Design(DDD) in a rapid start up enviroment.

## Setup
Run server with `rackup` or `shotgun` (for reloading)

#### Initialization
1) The `config.ru` loads the core application from `app/application.rb`

#### Tasks
All tasks are rake tasks loaded from the tasks directory

- List tasks `rake -T`

## Framework

**[Scorched](http://scorchedrb.com/)** -- Scorched is a generic, unopinionated, DRY, light-weight web framework for Ruby. It provides a generic yet powerful set of constructs for processing HTTP requests, with which websites and applications of almost any scale can be built.

If you've used a light-weight DSL-based Ruby web framework before, such as Sinatra, Scorched should look quite familiar. Scorched is a true evolutionary enhancement of Sinatra, with more power, focus, and less clutter.

## Testing
**[Mini Test]()** -- A small and incredibly fast unit testing framework.
It provides a rich set of assertions to make your tests clean and
readable.
