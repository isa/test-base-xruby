## Test Setup

Basic test base setup with cucumber, capybara, selenium, capybara-webkit, headless and rspec.

First thing to do is installing ruby or jruby. You can do this by:

    rvm install ruby-1.8.7
    rvm install jruby-1.6.7.2

I setup two different rvmrc files, so you can pick either of them. By default it is ruby.

Another thing you should install prior to use this base is:

    brew install qt chromedriver

### Ruby

Well, after getting into the directory, all you need to do is just installing the gems:

    bundle install

And then create your tests by following the example and run them as below:

    bundle exec cucumber test/features

### JRuby

Same goes here:

    jruby -S bundle install

and execute your tests with:

    jruby -S bundle exec cucumber test/features

### WebKit Headless Testing

Normally, base is setup to use selenium out-of-the-box. However, if you would like to do the headless testing, make sure you are changing the `env.rb` file under `test/features/support` folder as following:

    Capybara.default_driver = :webkit
    Capybara.javascript_driver = :webkit
