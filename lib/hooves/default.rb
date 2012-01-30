require 'hooves'
#require 'rails/commands/server'

if defined?(::Rails::Server)
  ::Rails::Server.class_eval do
    def options
      @options ||= parse_options(ARGV)
      @options[:server] ||= "unicorn"
      @options
    end
  end
end
