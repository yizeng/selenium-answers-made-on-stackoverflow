# Question:: How to find nearest parent by tag_name with selenium
# Link:: http://stackoverflow.com/questions/21816973
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <table>
    <tbody>
      <table>
        <tbody>
          <tr><td><font color="#FFFFFF">some probably unique text</font></td></tr>
        </tbody>
      </table>
    </tbody>
  </table>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

nearest_table = driver.find_element(:xpath => "(.//font[@color='#FFFFFF' and text()='some probably unique text']/ancestor::table)[1]")
puts "nearest_table.attribute('innerHTML'):\n#{nearest_table.attribute('innerHTML')}"

driver.quit
