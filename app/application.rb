require 'scorched'

module Iridescence
  class App < Scorched::Controller
    get '/' do
      'hello world'
    end
  end
end
