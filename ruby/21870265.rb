# Question:: How to identify element using link name in a onclick html tag?
# Link:: http://stackoverflow.com/questions/21870265
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div class="search">
    <div class="search-dropdown" onclick="showHideUtilMenu(event, 'SearchMenu');">
      <span id="searchoptionValue">Consumer</span>
      <span id="dropdownarrow"></span>
      <span id="searchurlValue" style="display: none;">http://</span>
      <div id="SearchMenu" class="utility-menu combobox">
        <ul class="menu-link">
          <li class="menu-link">
            <a onclick="getSearchOption('StoreNet','http://store.net/test);">StoreNet</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

link = driver.find_element(:css => "#SearchMenu a[onclick*='store.net/test']")
puts "link.text = '#{link.text}'"

driver.quit
