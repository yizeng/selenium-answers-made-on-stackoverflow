# Question:: How to open a new tab using Selenium WebDriver?
# Link:: http://stackoverflow.com/questions/17547473
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get('http://stackoverflow.com/')

body = driver.find_element(:tag_name => 'body')
body.send_keys(:control, 't')

driver.quit
