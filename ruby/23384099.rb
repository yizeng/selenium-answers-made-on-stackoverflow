# Question:: How to find the second value with same CSS class using Selenium webdriver
# Link:: http://stackoverflow.com/questions/23384099
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :phantomjs

DEMO_PAGE = <<-eos
  data:text/html,
  <ul id="ui-id-7">
    <li class="ui-menu-item"><a id="ui-id-23"><span>New Zealand</span></a></li>
    <li class="ui-menu-item"><a id="ui-id-24"><span>Australia</span></a></li>
    <li class="ui-menu-item"><a id="ui-id-25"><span>Fiji</span></a></li>
  </ul>
eos

driver.get(DEMO_PAGE)

link_by_css = driver.find_element(:css, "li.ui-menu-item:nth-of-type(2) > a[id^='ui-id-']")
link_by_xpath = driver.find_element(:xpath, "(//a[starts-with(@id, 'ui-id-')])[2]")

puts "link_by_css.text = '#{link_by_css.text}'"
puts "link_by_xpath.text = '#{link_by_xpath.text}'"
