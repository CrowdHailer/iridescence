require_relative '../test_config'

class EmailTest < MiniTest::Test
  # Construction
  def test_clears_white_space
    assert_equal Email.new('test@example.com'), Email.new(' test@example.com')
  end

  def test_raises_error_for_email_with_no_at
    assert_raises Email::Invalid do
      Email.new('bad')
    end
  end

  def test_raises_error_for_email_with_two_ats
    assert_raises Email::Invalid do
      Email.new('a@b@c.com')
    end
  end

  def test_raises_error_when_dumping_not_an_email
    assert_raises Stash::ItemError do
      Email.dump('string')
    end
  end

  def test_cannot_edit_email
    email = Email.new('test@example.com')
    assert_raises NoMethodError do
      email.value = 'd@c.com'
    end
  end

  # Comparison

  def test_is_equal_for_same_email
    assert_equal Email.new('test@example.com'), Email.new('test@example.com')
  end

  def test_orders_alphabetically
    assert_equal -1, Email.new('a@example.com') <=> Email.new('b@example.com')
  end

  def test_shows_as_a_string
    assert_equal 'test@example.com', "#{Email.new('test@example.com')}"
  end

  def test_adds_to_strings
    assert_equal 'test@example.com', ('' + Email.new('test@example.com'))
  end

end
