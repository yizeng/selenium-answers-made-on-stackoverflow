# Question:: How to verify if colour of element changed on mouse hovering?
# Link:: http://stackoverflow.com/questions/17964544
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get('http://stackoverflow.com/')

btn_ask_question = driver.find_element(:css, '.nav.askquestion li')
puts "Background colour before hovering = '#{btn_ask_question.css_value('background-color')}'"

driver.action.move_to(btn_ask_question).perform
puts "Background colour after hovering = '#{btn_ask_question.css_value('background-color')}'"

driver.quit
