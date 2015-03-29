require_relative '../test_config'

module User
  class RecordTest < MyTest
    def email
      'test@example.com'
    end

    def password
      'password'
    end

    def test_user_can_have_email
      user = create :user, :email => email
      assert_equal email, user.email
    end
  end
end
