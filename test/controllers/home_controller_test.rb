require_relative '../test_config'
require_relative '../../app/application'

module Iridescence
  class HomeControllerTest < MiniTest::Test
    include ControllerTesting

    def app
      HomeController
    end

    def test_home_page_is_availabe
      assert_ok get('/')
    end

    def test_bad_page_returns_500
      skip
      assert_ok get('/bad')
    end
  end
end
