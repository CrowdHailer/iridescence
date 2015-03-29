require_relative '../test_config'

module User
  class RecordTest < MyTest
    def email
      'test@example.com'
    end

    def password
      'password'
    end

    def test_has_an_id
      record = create :user_record
      assert_match(/.{8}/, record.id)
    end

    def test_requires_email
      err = assert_raises Sequel::NotNullConstraintViolation do
        create :user_record, :email => nil
      end
      assert_match(/email/, err.message)
    end

    def test_email_must_be_unique
      err = assert_raises Sequel::UniqueConstraintViolation do
        2.times{ create :user_record, :email => 'test@example.com' }
      end
      assert_match(/email/, err.message)
    end

    def test_requires_password
      err = assert_raises Sequel::NotNullConstraintViolation do
        create :user_record, :password => nil
      end
      assert_match(/password/, err.message)
    end

    def test_crypts_password
      record = create :user_record, :password => 'password'
      record.reload
      assert_equal record.password, 'password'
      refute_equal 'password', record.password
    end

    def test_crypts_remember_token
      record = create :user_record, :remember_token => 'remember'
      record.reload
      assert_equal record.remember_token, 'remember'
      refute_equal 'remember', record.remember_token
    end

    def test_crypts_reset
      record = create :user_record, :password_reset_token => 'password_reset_token'
      record.reload
      assert_equal record.password_reset_token, 'password_reset_token'
      refute_equal 'password_reset_token', record.password_reset_token
    end

    def test_can_have_admin_status
      record = create :user_record, :admin => true
      assert_equal true, record.admin
    end

    def test_it_saves_time_of_creation
      Time.stub :now, Time.at(0) do
        record = create :user_record
        assert_equal Time.at(0), record.created_at
        assert_equal Time.at(0), record.updated_at
      end
    end

    def test_it_save_update_time
      Time.stub :now, Time.at(0) do create :user_record end
      record = Record.last
      record.update :email => 'new@test.com'
      refute_equal Time.at(0), record.updated_at
    end

    def test_it_can_save_last_login_at
      record = create :user_record, :last_login_at => Time.at(200)
      assert_equal Time.at(200), record.last_login_at
    end
  end
end
