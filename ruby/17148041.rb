# Question:: Selenium web driver error of Uninitialized constant Selenium::Webdriver
# Link:: http://stackoverflow.com/questions/17148041
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, Firefox 28

require 'selenium-webdriver'
require 'test/unit'

class TC_Login < Test::Unit::TestCase
  @driver = Selenium::WebDriver.for :firefox
  @driver.get "http:test.com"
end
