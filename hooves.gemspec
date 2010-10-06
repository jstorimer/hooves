Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'hooves'
  s.version      = '0.1'
  s.summary      = "Rack handler for unicorn. Meant to be used with Rails 3.0's server command"

  s.author = 'Jesse Storimer'
  s.email = 'jstorimer@gmail.com'
  s.homepage = 'http://github.com/jstorimer/hooves'
  
  s.files            = %w( README )
  s.files            += Dir.glob("lib/**/*")
  
  s.add_dependency('rails', '~> 3.0')
end

