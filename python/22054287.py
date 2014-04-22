__question__ = "Clicking visible close button inside a dialog"
__link__ = "http://stackoverflow.com/questions/22054287"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

driver = webdriver.Firefox()
driver.get("http://www.saksoff5th.com/")

driver.implicitly_wait(10) # seconds

driver.find_element_by_css_selector(".sign-in > span").click()
driver.find_element_by_css_selector(".ui-dialog[style*='display: block'] .ui-icon-closethick").click()
