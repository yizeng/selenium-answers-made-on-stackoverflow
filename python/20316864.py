__question__ = "How to perform right click using Selenium ChromeDriver?"
__link__ = "http://stackoverflow.com/questions/20316864"
__environment__ = "Windows 7, Python 2.7.5, Chrome 34, ChromeDriver 2.9"

from selenium import webdriver
from selenium.webdriver import ActionChains

DEMO_PAGE = '''
	data:text/html,
	<a id="show_alert" oncontextmenu="javascript:alert('Right clicked!');return false;">Link for right clicking</a>
'''

driver = webdriver.Chrome()
driver.get(DEMO_PAGE)

link = driver.find_element_by_css_selector("#show_alert")
ActionChains(driver).context_click(link).perform()

print "Alert text: " + driver.switch_to_alert().text
