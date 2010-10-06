hooves
=======

What?
------
hooves adds a super simple Rack handler for the [Unicorn](http://unicorn.bogomips.org) http server. Basically just enough to get it running when using the `rails server` command.

Install
--------
gem i hooves

You'll want to stick it in your Gemfile so that rails s can pick it up.

Caveats
--------
Using this gem monkey patches Rack::Handler.default making Unicorn the default.


