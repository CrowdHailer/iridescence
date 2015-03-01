require_relative '../test_config'

class MyTest
  def test_user_can_have_name
    user = User.create :name => 'Peter'
    assert_equal 'Peter', user.name
  end
end
