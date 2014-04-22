# Question:: How to get element's text without retrieving the text from its descendant
# Link:: http://stackoverflow.com/questions/17485416
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div class="t-beaneditor-row">
    <label>Login ID</label>
    SeleniumReset
  </div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

div = driver.find_element(:tag_name => 'div')
label = driver.find_element(:tag_name => 'label')
div_only_text = div.text.sub!(label.text, '').strip

puts "div.text = '#{div.text}'"
puts "label.text = '#{label.text}'"
puts "div_only_text = '#{div_only_text}'"
