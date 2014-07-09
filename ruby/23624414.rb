# Question:: Unable to Locate the Text in Xpath
# Link:: http://stackoverflow.com/questions/23624414
# Environment:: Linux Mint 17, Ruby 2.1.1, Selenium 2.42.0, PhantomJS 1.9.7

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :phantomjs

DEMO_PAGE = <<-eos
  data:text/html,
  <div>Tax table</div>
  <table>
    <tr>
      <td id="td26" style="width: 16%">
        <div class="bglabel" style="width: 150px; clear: both">Tax <div style="float: right;"></div></div>
      </td>
    </tr>
  </table>
eos

driver.get(DEMO_PAGE)

first_div = driver.find_element(:xpath, "//div[contains(text(),'Tax')]")
target_div = driver.find_element(:xpath, "//td[./div[contains(text(),'Tax')]]")
puts "first_div.text = '#{first_div.text}'"
puts "target_div.text = '#{target_div.text}'"

driver.quit
