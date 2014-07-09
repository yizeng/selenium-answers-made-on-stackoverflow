# Question:: WebDriver filtering list of elements
# Link:: http://stackoverflow.com/questions/20365966
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <span class="tab-strip-text" unselectable="on">Admin</span>
  <span class="tab-strip-text" unselectable="on">User</span>
  <span class="tab-strip-text" unselectable="on">Reports</span>
  <span class="tab-strip-text" unselectable="on">Logs</span>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

element = driver.find_element(:xpath => "//*[@class='tab-strip-text' and text()='Reports']")
puts "element.text = '#{element.text}'"

driver.quit
