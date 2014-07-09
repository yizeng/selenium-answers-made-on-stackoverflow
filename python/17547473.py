__question__ = "How to open a new tab using Selenium WebDriver?"
__link__ = "http://stackoverflow.com/questions/17547473"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Firefox 24.6.0 ESR"

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("http://stackoverflow.com/")

body = driver.find_element_by_tag_name("body")
body.send_keys(Keys.CONTROL + 't')

driver.quit()
