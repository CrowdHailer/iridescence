module Iridescence
  class HomeController < BaseController
    render_defaults[:dir] += '/home'

    get '/' do
      render :index
    end

    get '/bad' do
      1/0
    end
  end
end
