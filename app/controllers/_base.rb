module Iridescence
  class BaseController < Scorched::Controller
    middleware << proc do |app|
      use Rack::Session::Cookie, secret: ENV.fetch('SESSION_SECRET_KEY')
      use Rack::MethodOverride
    end
    
    VIEW_DIR = File.expand_path('../../views', __FILE__).freeze
    render_defaults[:dir] = VIEW_DIR
    render_defaults[:layout] = File.expand_path('layouts/application', VIEW_DIR).to_sym
  end
end
