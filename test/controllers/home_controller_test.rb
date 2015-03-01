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
  end
end
