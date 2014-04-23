__question__ = "Find and click an item from 'onclick' partial value"
__link__ = "http://stackoverflow.com/questions/21691126"
__environment__ = "Linux Mint 16, Python 2.7.5+, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

DEMO_PAGE = '''
	data:text/html,
	<input name="booksubmit" type="button" class="searchAvailBtnSelect" value="Select" onclick="setTimeout('disableSelect()',1);bookNowSubmit('0165','1BD','000000452014022703S000016500010708F ','101400','156000','3','02/27/2014','false','false','false','false','true','false','false','EXPRESS','63','1 Bedroom Deluxe','false','AC')" />
	<input name="booksubmit" type="button" class="searchAvailBtnSelect" value="Select" onclick="setTimeout('disableSelect()',1);bookNowSubmit('0165','2BD','000000452014022703S000016500010708F ','101400','156000','3','02/27/2014','false','false','false','false','true','false','false','EXPRESS','63','2 Bedroom Deluxe','false','AC')" />
	<input name="booksubmit" type="button" class="searchAvailBtnSelect" value="Select" onclick="setTimeout('disableSelect()',1);bookNowSubmit('0165','1BD','000000452014022703S000016500010708F ','101400','156000','3','02/27/2014','false','false','false','false','true','false','false','EXPRESS','63','1 Bedroom Presidential','false','AC')" />
'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

print driver.find_element_by_xpath(".//input[contains(@onclick, '1 Bedroom Deluxe')]").get_attribute("onclick")
print driver.find_element_by_css_selector("input[onclick*='1 Bedroom Deluxe']").get_attribute("onclick")
