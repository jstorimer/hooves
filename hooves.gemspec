Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'hooves'
  s.version      = '0.3'
  s.summary      = "A simple Rack handler for unicorn meant to be used with the `rails server` command"
  s.date         = Time.now.strftime('%Y-%m-%d')


  s.author = 'Jesse Storimer'
  s.email = 'jstorimer@gmail.com'
  s.homepage = 'http://github.com/jstorimer/hooves'

  s.has_rdoc          = false

  s.files            = %w( README.md )
  s.files            += Dir.glob("lib/**/*")

  s.add_dependency('unicorn', '> 0')
end

