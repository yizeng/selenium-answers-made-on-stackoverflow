__question__ = "Clicking visible close button inside a dialog"
__link__ = "http://stackoverflow.com/questions/22054287"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Firefox 24.6.0 ESR"

from selenium import webdriver

driver = webdriver.Firefox()
driver.get("http://www.saksoff5th.com/")

driver.implicitly_wait(10) # seconds

driver.find_element_by_css_selector(".sign-in > span").click()
driver.find_element_by_css_selector(".ui-dialog[style*='display: block'] .ui-icon-closethick").click()

driver.quit()
