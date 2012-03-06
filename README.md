hooves
=======
Adds a super simple Rack handler for the [Unicorn](http://unicorn.bogomips.org) http server. Basically just enough to get it running when using the `rails server` command.

Install
--------
It's a rubygem, you'll want to include it in your Gemfile. 

Usage
------
Just use `rails server unicorn`.

If you want to make unicorn the default rack server then you can `require 'hooves/default'` and boot it up with just `rails server`.

Config file
------------
Hooves looks for unicorn config files in two locations.

First it looks in ~/.hooves. If that file exists then it gets passed to Unicorn as the config file.

Second it looks in ./.hooves.

We look in ~/ first because you can only pass one config file to Unicorn. If your project has a .hooves file checked in to its root and you want to have a custom config file, that might be a pain. So we look in ~/ first. That might also become a pain if you want to have different configs for different projects. Let me know and we'll find something that works.

Caveats
--------
* This was written to work with Rails 3. Not sure what'll happen if you try it elsewhere. Let me know!

![](http://www.awesomeoff.com/images/entries/mainview/robocop_unicorn.jpg)

