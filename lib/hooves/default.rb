require 'hooves'

::Rails::Server.class_eval do
  def options
    @options ||= parse_options(ARGV)
    @options[:server] ||= "unicorn"
    @options
  end
end
