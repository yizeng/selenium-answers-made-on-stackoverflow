# Question:: Webdriver in Ruby, add more test
# Link:: http://stackoverflow.com/questions/19233497
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, Firefox 28

require 'selenium-webdriver'
require 'test/unit'

module Test
  class GoogleTest < Test::Unit::TestCase
    def setup
      @driver = Selenium::WebDriver.for :firefox
    end

    def teardown
      @driver.quit
    end

    def test_something
      @driver.navigate.to "http://google.com"

      element = @driver.find_element(:name, 'q')
      element.send_keys "Hello WebDriver!"
      element.submit

      puts "@driver.title: #{@driver.title}"
    end

    def test_something_else
      @driver.navigate.to "http://stackoverflow.com"

      puts "\n@driver.title: #{@driver.title}"
    end
  end
end