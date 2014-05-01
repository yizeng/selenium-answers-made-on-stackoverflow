# Question:: Selecting an item in the DataGrid
# Link:: http://stackoverflow.com/questions/21029951
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <table role="grid">
    <thead id="usersForm:usersTable_head">
    <tfoot/>
    <tbody id="usersForm:usersTable_data" class="ui-datatable-data ui-widget-content">
      <tr class="ui-widget-content ui-datatable-even ui-state-hover" aria-selected="false" role="row" data-rk="user1" data-ri="0">
        <td role="gridcell">1, User (user1)</td>
        <td role="gridcell">
          <span id="usersForm:usersTable:0:roles">6</span>
        </td>
      </tr>
      <tr class="ui-widget-content ui-datatable-odd" aria-selected="false" role="row" data-rk="user2" data-ri="1">
        <td role="gridcell">2, User (user2)</td>
        <td role="gridcell">
          <span id="usersForm:usersTable:1:roles">22</span>
        </td>
      </tr>
    </tbody>
  </table>
eos

driver = Selenium::WebDriver.for :chrome
driver.get(DEMO_PAGE)

username = 'user2'
row_by_css = driver.find_element(:css => "#usersForm\\\:usersTable_data > tr[data-rk='#{username}']")
row_by_xpath = driver.find_element(:xpath => ".//tbody[@id='usersForm:usersTable_data']/tr[@data-rk='#{username}']")

puts "row_by_css.text = '#{row_by_css.text}'"
puts "row_by_xpath.text = '#{row_by_xpath.text}'"

