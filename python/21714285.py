__question__ = "Find and click an item from 'onclick' partial value"
__link__ = "http://stackoverflow.com/questions/21691126"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, PhantomJS 1.9.7"

from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

driver = webdriver.PhantomJS()
driver.get("http://stackoverflow.com")

try:
	driver.find_element_by_css_selector(".section").click()
except NoSuchElementException:
	print "NoSuchElementException"
except:
	print "Other exception types posible"
	raise

driver.quit()
