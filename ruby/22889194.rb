# Question:: Error while executing a method in Ruby using Selenium WebDriver
# Link:: http://stackoverflow.com/questions/22889194
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

class PageObjects
  require 'selenium-webdriver'
  require 'page-object'

   def startup
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.window.maximize
   end
end

PageObjects.new.startup
