require File.expand_path("../../config/boot.rb", __FILE__)

# Load all controllers
require File.expand_path('../controllers/_base.rb', __FILE__)
Dir[File.expand_path('../controllers/*.rb', __FILE__)].each { |file| require file}


module Iridescence
  class App < BaseController

    # Load further controllers before final root mounted controller
    controller '/', HomeController
  end
end
