require "unicorn"
require "rack/content_length"
require "rack/chunked"

module Hooves
  # Rack Handler to use Unicorn for Rails::Application.run!
  module Unicorn
    def self.run(app, options={})
      options[:listeners] = ["#{options.delete(:Host)}:#{options.delete(:Port)}"]
      options[:worker_processes] = 3
      $DEBUG = true if options.delete(:debugger)
      daemonize = options.delete(:daemonize)

      # :pid option is stronly discouraged except in unicorn config file
      uni_options = options.slice(:listeners, :worker_processes)
      
      if daemonize
        ::Unicorn::Launcher.daemonize!(uni_options)
      else
        ::Unicorn.run(app, uni_options)
      end
    end
  end
end

