# Setup rack enviroment to test unless specified
RACK_ENV = ENV['RACK_ENV'] = 'test' unless defined?(RACK_ENV)

require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
Bundler.require(:default, RACK_ENV)

reporter_options = {color: true, slow_count: 5}
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |file| require file}

# TODO uncomment when using BCrypt
# BCrypt::Engine.cost = 1

# Searches for factories in test/factories
FactoryGirl.find_definitions

# overwrite as using sequel not active record
FactoryGirl.to_create { |i| i.save }

class MyTest < MiniTest::Test
  include FactoryGirl::Syntax::Methods

  # Ensures all tests are run in a transaction
  def run(*args, &block)
    result = nil
    Sequel::Model.db.transaction(:rollback=>:always, :auto_savepoint=>true){result = super}
    result
  end

end
