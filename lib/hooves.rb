require 'hooves/unicorn'
::Rack::Handler.register "unicorn",  "Hooves::Unicorn"

module Rack
  module Handler
    def self.default(options = {})
      Hooves::Unicorn
    end
  end
end
