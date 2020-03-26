
require 'rubygems'
require 'rspec'
require 'selenium-webdriver'
require 'cucumber/rake/task'


Before do
  @driver = Selenium::WebDriver.for :firefox
end

After do 
  @driver.quit
end