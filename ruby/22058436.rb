# Question:: Unable to click link using selenium webdriver
# Link:: http://stackoverflow.com/questions/22058436
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://google.com"

search_box = driver.find_element(:name, 'q')
search_box.send_keys "translate"
search_box.submit

Selenium::WebDriver::Wait.new(:timeout => 10).until {
  driver.find_element(:css , 'h3 > a')
}

results = driver.find_elements(:css , 'h3 > a')
results.each do|result|
  if result.attribute('textContent') == 'Google Translate'
    result.click
    break
  end
end

puts "driver.title = '#{driver.title}'"

driver.quit
