__question__ = "How can I find object with Selenium?"
__link__ = "http://stackoverflow.com/questions/16582808"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

driver = webdriver.PhantomJS()
driver.get('http://www.helloworld.com/')

print 'Text of .foot:\n'
print driver.find_element_by_class_name('footer').text
