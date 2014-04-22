__question__ = "How to set window size using phantomjs and selenium webdriver in python"
__link__ = "http://stackoverflow.com/questions/21899953"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

driver = webdriver.PhantomJS()
driver.set_window_size(1400,1000)

print "Window size:\n"
print driver.get_window_size()
