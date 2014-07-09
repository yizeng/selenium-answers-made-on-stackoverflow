# Question:: Unable to click on Chinese linkText on Salesforce Chinese version
# Link:: http://stackoverflow.com/questions/24224678
# Environment:: Linux Mint 17, Ruby 2.1.1, Selenium 2.42.0, Firefox 30

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get("http://www.salesforce.com/cn/")

driver.find_element(:css, "a[href='/cn/solutions/']").click

driver.quit
