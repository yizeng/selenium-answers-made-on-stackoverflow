# Question:: How to navigate to a sibling <p> element using selenium
# Link:: http://stackoverflow.com/questions/21892347
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div class="content1">
    <div class="bold"><a href="test">test</a></div>
    <p><span class="test two">Nuevo</span></p>
    <div class="bold2"><a href="test">test</a></div>
    <p>i want to get this text</p>
  </div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

paragraph = driver.find_element(:xpath => ".//div[@class='content1']/div[@class='bold2']/following-sibling::p")
puts "div.text = '#{paragraph.text}'"
