__question__ = "Storing an image's title text Selenium Webdriver Python"
__link__ = "http://stackoverflow.com/questions/22564396"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

DEMO_PAGE = '''data:text/html,
    <img src="" alt="" title="foobar">'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

print 'Title of img:\n'
print driver.find_element_by_xpath("//img").get_attribute("title")
