require_relative '../test_config'
require_relative '../../app/application'

module Iridescence
  class AdminControllerTest < MiniTest::Test
    include ControllerTesting

    def app
      AdminController
    end

    def test_redirects_from
      skip
      get('/')
      assert_equal 100, last_response.status
    end

  end
end
