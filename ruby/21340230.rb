# Question:: Selecting parent elements with WebdriverJS
# Link:: http://stackoverflow.com/questions/21340230
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div id="main"><div><span email="noreply@example.com">Contact me</span></div></div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

element = driver.find_element(:xpath => ".//div[./div/span[@email='noreply@example.com']]")

puts "element.id = '#{element.attribute('id')}'"

driver.quit
