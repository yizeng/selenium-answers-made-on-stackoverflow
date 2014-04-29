# Question:: Selenium can't find fields with type number
# Link:: http://stackoverflow.com/questions/23352000
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, Firefox 28

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

DEMO_PAGE = <<-eos
  data:text/html,
  <input class="numeric integer required" id="application_form_age" min="0" name="application_form[age]" size="50" step="1" type="number" / >
eos

driver.get(DEMO_PAGE)

input = driver.find_element(:tag_name, 'input')
input.send_keys('25')

input_value = input.attribute('value')
puts "input_value = '#{input_value}'"
