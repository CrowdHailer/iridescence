require_relative '../test_config'

module User
  class CreateFormTest < MyTest
    def test_obtains_email
      form = CreateForm.new 'email' => 'test@example.com'
      assert_equal 'test@example.com', form.email
    end

    def test_invalid_errors_form_email
      form = CreateForm.new 'email' => 'test'
      refute form.valid?
      assert_equal ["'test' is not a valid email"], form.errors_on(:email)
    end
  end
end
