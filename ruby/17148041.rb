# Question:: Selenium web driver error of Uninitialized constant Selenium::Webdriver
# Link:: http://stackoverflow.com/questions/17148041
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'
require 'test/unit'

class TC_Login < Test::Unit::TestCase
  @driver = Selenium::WebDriver.for :firefox
  @driver.get "http:test.com"
  puts "@driver.title = '#{@driver.title}'"
end
