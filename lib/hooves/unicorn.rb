require "unicorn"
require "rack/content_length"
require "rack/chunked"

module Hooves
  # Rack Handler to use Unicorn for Rails::Application.run!
  module Unicorn
    class << self
      def run(app, options={})
        options[:listeners] = ["#{options.delete(:Host)}:#{options.delete(:Port)}"]
        options[:worker_processes] ||= 3

        if options.delete(:debugger)
          $DEBUG = true

          # It's difficult to debug with more than one worker on the go
          options[:worker_processes] = 1
          # The default timeout (30s) doesn't leave much time for debugging
          options[:timeout] = 120
        end

        daemonize = options.delete(:daemonize)

        # override any settings that you want in your config file
        options[:config_file] = find_config_file

        # :pid option is stronly discouraged except in unicorn config file
        uni_options = options.select { |k, v| [:listeners, :worker_processes, :config_file, :timeout].include?(k) }

        if daemonize
          ::Unicorn::Launcher.daemonize!(uni_options)
        else
          ::Unicorn::HttpServer.new(app, uni_options).start.join
        end
      end

      USER_CONFIG = File.expand_path('~/.hooves')
      PROJECT_CONFIG = File.expand_path('./.hooves')
      def find_config_file
        if user_config?
          USER_CONFIG
        elsif project_config?
          PROJECT_CONFIG
        end
      end

      def user_config?
        File.exist?(USER_CONFIG)
      end

      def project_config?
        File.exist?(PROJECT_CONFIG)
      end
    end
  end
end

