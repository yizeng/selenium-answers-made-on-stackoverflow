# Question:: How to locate Element via CSS Selector/XPath?
# Link:: http://stackoverflow.com/questions/21671451
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <a class="LinkDetail" href="/settings/carsettings?xyz=L_11:1:*:2&carid=199&carnumber=4294967295" target="_top" tabindex="23">Card 199</a>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

link_by_css = driver.find_element(:css => "a[href*='settings/carsettings'][href*='carid=199']")
link_by_xpath = driver.find_element(:xpath => ".//a[contains(@href, 'settings/carsettings') and contains(@href, 'carid=199')]")

puts "link_by_css.text = '#{link_by_css.text}'"
puts "link_by_xpath.text = '#{link_by_xpath.text}'"

driver.quit
