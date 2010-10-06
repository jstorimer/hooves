hooves
=======
Adds a super simple Rack handler for the [Unicorn](http://unicorn.bogomips.org) http server. Basically just enough to get it running when using the `rails server` command.

Install
--------
It's a rubygem, you'll want to include it in your Gemfile. 

Caveats
--------
* Using this gem monkey patches Rack::Handler.default making Unicorn the default.
* This was written to work with Rails 3. Not sure what'll happen if you try it elsewhere. Let me know!

![](http://www.awesomeoff.com/images/entries/mainview/robocop_unicorn.jpg)

