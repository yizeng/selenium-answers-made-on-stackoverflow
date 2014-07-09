# Question:: Selenium/Ruby unknown driver, firefox
# Link:: http://stackoverflow.com/questions/21101404
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'

begin
  driver = Selenium::WebDriver.for :Firefox
rescue ArgumentError
  puts "ArgumentError has been caught as expected."
end
