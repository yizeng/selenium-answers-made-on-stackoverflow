__question__ = "python dynamic webscraping javascript content"
__link__ = "http://stackoverflow.com/questions/24481622"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Chrome 35, ChromeDriver 2.9"

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pprint

driver = webdriver.Chrome()
driver.get("http://www.sigmaaldrich.com/united-states.html")

print driver.title
inputElement = driver.find_element_by_name("Query")

# type in the search
inputElement.send_keys("1300746-79-5")
inputElement.submit()

pricing_link = driver.find_element_by_css_selector("li.priceValue a")
print pricing_link.text
pricing_link.click()

# then deal with the data you want
price_table = WebDriverWait(driver, 10).until(
	lambda driver : driver.find_element_by_css_selector(".priceAvailContainer tbody")
)
print 'price_table.text: ' + price_table.text

driver.quit()
