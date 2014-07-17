__question__ = "python selenium xpath/css selector"
__link__ = "http://stackoverflow.com/questions/24687271"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Firefox 24.6.0 ESR"

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

url = "http://www.sigmaaldrich.com/united-states.html"
cas = "100-44-7"

driver = webdriver.Firefox()
driver.get(url)

inputElement = driver.find_element_by_name("Query")
inputElement.send_keys(cas)
inputElement.submit()

pricing_link = driver.find_element_by_css_selector("li.priceValue a")
pricing_link.click()

outputs_by_xpath = WebDriverWait(driver, 10).until(
	lambda driver : driver.find_elements_by_xpath(".//td[@class='sku']/p")
)
outputs_by_css = WebDriverWait(driver, 10).until(
	lambda driver : driver.find_elements_by_css_selector("td.sku > p")
)

for output in outputs_by_xpath:
	print(output.text)

print("\n")

for output in outputs_by_css:
	print(output.text)

driver.quit()
