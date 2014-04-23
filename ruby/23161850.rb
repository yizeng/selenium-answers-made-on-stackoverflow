# Question:: Unable to set value in textbox after setting it enabled through javascript
# Link:: http://stackoverflow.com/questions/23161850
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <input type="text" disabled>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

input = driver.find_element(:tag_name => 'input')
driver.execute_script('arguments[0].value = "1";', input)

input_value = input.attribute('value')
puts "input_value = '#{input_value}'"
