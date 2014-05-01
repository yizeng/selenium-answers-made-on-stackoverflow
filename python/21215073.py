__question__ = "Close dialog box automatically using Selenium python"
__link__ = "http://stackoverflow.com/questions/21215073"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.41.0, Firefox 28"

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException

DEMO_PAGE = '''
	data:text/html,
	<button id="empty_cart_btn" onclick="alert('This will remove all items from your cart. Are you sure?')">Empty Cart</button>
'''

browser = webdriver.Firefox()
browser.get(DEMO_PAGE)

browser.find_element_by_id('empty_cart_btn').click()

try:
	WebDriverWait(browser, 5).until(EC.alert_is_present(), 'Waiting for alert timed out')

	alert = browser.switch_to_alert()
	alert.accept()
	print "alert accepted"

except TimeoutException:
	print "no alert"