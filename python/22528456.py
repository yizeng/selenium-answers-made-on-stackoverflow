__question__ = "How to replace default values in the text field using selenium python?"
__link__ = "http://stackoverflow.com/questions/22528456"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Firefox 24.6.0 ESR"

import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

browser = webdriver.Firefox()
url = 'https://www.aircanada.com/en/'
browser.get(url)

input_field = browser.find_element_by_id('departure1')

browser.execute_script("arguments[0].value = ''", input_field)
input_field.send_keys(time.strftime("%d/%m/%Y"))
input_field.send_keys(Keys.RETURN)

browser.quit()
