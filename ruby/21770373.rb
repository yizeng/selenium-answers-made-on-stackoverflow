# Question:: Get only text from parent <td>
# Link:: http://stackoverflow.com/questions/21770373
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <table><tr>
    <td class=resutinfo >
      Displaying 1 - 10 of 41 records Results per page: 
      <select onchange="javascript:gotoRow(1);" name="pageSize>
        <option value=10, selected="true> 10 </option>
        <option value=20, > 20 </option>
        <option value=10, > 30 </option>
      </select>
    </td>
  </tr></table>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

td = driver.find_element(:tag_name => 'td')
select = driver.find_element(:tag_name => 'select')
td_only_text = td.text.sub!(select.text, '').strip

puts "td_only_text = '#{td_only_text}'"

driver.quit
