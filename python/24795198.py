__question__ = "Selenium Python get all children elements"
__link__ = "http://stackoverflow.com/questions/24795198"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.42.1, Firefox 24.6.0 ESR"

from selenium import webdriver

driver = webdriver.Firefox()
driver.get("http://www.stackoverflow.com")

header = driver.find_element_by_id("header")

# start from your target element, here for example, "header"
all_children_by_css = header.find_elements_by_css_selector("*")
all_children_by_xpath = header.find_elements_by_xpath(".//*")

print 'len(all_children_by_css): ' + str(len(all_children_by_css))
print 'len(all_children_by_xpath): ' + str(len(all_children_by_xpath))
