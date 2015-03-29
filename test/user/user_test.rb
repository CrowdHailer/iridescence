require_relative '../test_config'

class MyTest
  def email
    'test@example.com'
  end

  def password
    'password'
  end

  def test_user_can_have_email
    user = User.new :email => email
    assert_equal email, user.email
  end
end
