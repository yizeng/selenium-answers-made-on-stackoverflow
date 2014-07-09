# Question:: how to select all the extjs dropdown values in selenium webdriver
# Link:: http://stackoverflow.com/questions/17740502
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :phantomjs
driver.get('http://dev.sencha.com/deploy/ext-4.0.0/examples/form/combos.html')

# set wait timeout
wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds

# open combo box list
arrow_trigger = wait.until { driver.find_element(:css => "#simpleCombo .x-form-arrow-trigger") }
arrow_trigger.click

# find 'Utah' and click
combo_items = driver.find_elements(:css => ".x-boundlist:not([style*='display: none']) .x-boundlist-item")
combo_items.each do | item |
  if item.attribute('textContent') == 'Utah'
    driver.action.click(item).perform
    break
  end
end

# check selected value
combo_input = driver.find_element(:css => "#simpleCombo .x-form-text")
puts "Selected value = '#{combo_input.attribute('value')}'"

driver.quit
