__question__ = "python selenium select from drop-down menu"
__link__ = "http://stackoverflow.com/questions/24498976"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, PhantomJS 1.9.7"

from selenium import webdriver

driver = webdriver.PhantomJS()
driver.get("http://www.strem.com/")

selectbox_input = driver.find_element_by_id("selectbox_input")
selectbox_input.click()

driver.find_element_by_id("selectbox_input_cas").click()
print "selectbox_input.get_attribute('value') = " + selectbox_input.get_attribute('value')

driver.quit()
