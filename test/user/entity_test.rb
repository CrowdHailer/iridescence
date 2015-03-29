require_relative '../test_config'

module User
  class EntityTest < MyTest
    def user
      # TODO change to just User
      @user ||= User::Entity.new record
    end

    def record
      @record ||= OpenStruct.new
    end

    def teardown
      @user = nil
      @record = nil
    end

    def test_can_access_email
      record.email = 'test@example.com'
      assert_equal 'test@example.com', user.email
    end

    def test_can_set_email
      user.email = 'test@example.com'
      assert_equal 'test@example.com', record.email
    end
  end
end
