require 'hooves'

module Rack::Handler
  def self.default(options = {})
    Hooves::Unicorn
  end
end
