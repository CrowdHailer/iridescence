require_relative '../test_config'

# TODO needs to select what you are testing with. Might be overkill
module Errol
  module EnitiyTesting
    def entry_access(*entries, **options)
      entries.each do |entry|
        value = options.fetch(:with) { :test_symbol }
        define_method :"test_can_access_#{entry}" do
          record.send "#{entry}=", value
          assert_equal value, entity.send(entry)
        end

        define_method :"test_can_set_#{entry}" do
          entity.send "#{entry}=", value
          assert_equal value, record.send(entry)
        end
      end
    end
  end
end

module User
  class EntityTest < MyTest
    extend Errol::EnitiyTesting
    def user
      # TODO change to just User
      @user ||= User::Entity.new record
    end

    def entity
      user
    end

    def record
      @record ||= OpenStruct.new
    end

    def teardown
      @user = nil
      @record = nil
    end

    entry_access :email, :with => 'test@example.com'
    entry_access :password, :with => 'pasword'
    entry_access :last_login_at, :with => Time.at(200)
  end
end
