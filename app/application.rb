require File.expand_path("../../config/boot.rb", __FILE__)

module Iridescence
  class App < Scorched::Controller
    middleware << proc do |app|
      use Rack::Session::Cookie, secret: ENV.fetch('SESSION_SECRET_KEY')
      use Rack::MethodOverride
    end

    get '/' do
      'hello world'
    end
  end
end
