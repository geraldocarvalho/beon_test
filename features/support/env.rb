require 'selenium-webdriver'
require 'rspec'
require 'capybara'
require 'pry'
require 'capybara/cucumber'
require 'site_prism'
require 'yaml'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

DATA = YAML.load_file("#{File.dirname(__FILE__)}/config/default_data.yaml")
