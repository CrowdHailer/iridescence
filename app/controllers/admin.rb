module Iridescence
  class AdminController < BaseController
    render_defaults[:dir] += '/admin'

    get '/' do
      render :index
    end

  end
end
