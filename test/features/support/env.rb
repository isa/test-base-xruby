require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.run_server = false
Capybara.app_host = 'http://www.google.com'
# Capybara.default_driver = :selenium
Capybara.default_driver = :webkit
Capybara.javascript_driver = :webkit
Capybara.default_selector = :css
# Capybara.default_selector = :xpath
Capybara.default_wait_time = 2 #default wait time for ajax
Capybara.ignore_hidden_elements = false #ignore hidden elements when testing, make helpful when you hide or show elements using javascript


module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

World(Capybara::DSL, Helpers)

