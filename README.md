hooves
=======
Adds a super simple Rack handler for the [Unicorn](http://unicorn.bogomips.org) http server. Basically just enough to get it running when using the `rails server` command.jj

Install
--------
It's a rubygem, you'll want to include it in your Gemfile. 

Caveats
--------
Using this gem monkey patches Rack::Handler.default making Unicorn the default.

![](http://www.awesomeoff.com/images/entries/mainview/robocop_unicorn.jpg)

