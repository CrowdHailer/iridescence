# setup as development enviroment unless otherwise specified
RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)


# Load our dependencies
require 'rubygems' unless defined?(Gem)
# Sets up all of load paths that are searched when requiring code
require 'bundler/setup'
# requires all gems for the current runtime enviroment
Bundler.require(:default, RACK_ENV)

# Load enviromental variables
Dotenv.load
