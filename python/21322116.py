__question__ = "Using Selenium in Python to click/select a radio button"
__link__ = "http://stackoverflow.com/questions/21322116"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains

DEMO_PAGE = '''
	data:text/html,
	<input name="pollQuestion" type="radio" value="SRF">
	<font face="arial,sans-serif" size="-1">ChoiceOne</font><br />
	<input name="pollQuestion" type="radio" value="COM">
	<font face="arial,sans-serif" size="-1">ChoiceTwo</font><br />
	<input name="pollQuestion" type="radio" value="MOT">
	<font face="arial,sans-serif" size="-1">ChoiceThree</font>
'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

radio_srf = driver.find_element_by_xpath(".//input[@type='radio' and @value='SRF']")
ActionChains(driver).double_click(radio_srf).perform()

print 'radio_srf.is_selected: ' + str(radio_srf.is_selected())

driver.quit()
