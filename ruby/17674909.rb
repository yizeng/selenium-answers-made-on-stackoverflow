# Question:: How to check resolution of browser when running selenium webdriver?
# Link:: http://stackoverflow.com/questions/17674909
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :phantomjs

initial_size = driver.manage.window.size
puts "Initial size = '#{initial_size}'"

driver.manage.window.size = Selenium::WebDriver::Dimension.new(1024, 768)
puts "Size set to = '#{driver.manage.window.size}'"

driver.manage.window.resize_to(800, 600)
puts "Resized to = '#{driver.manage.window.size}'"

driver.manage.window.maximize
puts "Maxiumzed to = '#{driver.manage.window.size}'"

driver.quit
