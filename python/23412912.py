__question__ = "Selenium send_keys doesn't work if input type='number'"
__link__ = "http://stackoverflow.com/questions/23412912"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, Firefox 28"

from selenium import webdriver

DEMO_PAGE = '''
	data:text/html,
	<form><input type="number" id="field_id"></form>
'''

browser = webdriver.Firefox()
browser.get(DEMO_PAGE)

input_number = browser.find_element_by_id('field_id')
input_number.send_keys('12')

input_number_value = input_number.get_attribute('value')
print "input_number_value = " + input_number_value