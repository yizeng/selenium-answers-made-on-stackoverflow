__question__ = "How to detect 'select' option when multiple attributes have same id"
__link__ = "http://stackoverflow.com/questions/21156601"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

DEMO_PAGE = '''
	data:text/html,
	<input id="Proc#fr#2-1-111" type="text" data-ctrl="JSCtrl" name="fr" style="display: none; background-color: rgb(224, 224, 224); width: 80px;" disabled=""/>
	<select id="Proc#fr#2-1-111" data-ctrl="JSCtrl" name="fr" optionsdict="3,25 cm,4,29.97 cm,5,30 cm" style="border: 1px solid rgb(127, 157, 185); width: 80px;">
	<select id="Proc#fr#2-1-111" data-ctrl="JSCtrl" name="fr" optionsdict="3,25 cm,4,29.97 cm,5,30 cm,6,50 cm,7,59.94 cm,8,60 cm" style="border: 1px solid rgb(127, 157, 185); display: none; width: 80px;" disabled="">
'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

element_by_css_selector = driver.find_element_by_css_selector("select[id='Proc#fr#2-1-111']:not([style*='display: none'])")
element_by_xpath = driver.find_element_by_xpath(".//select[@id='Proc#fr#2-1-111' and not(contains(@style, 'display: none'))]")

print "element_by_css_selector.get_attribute('optionsdict'): " + element_by_css_selector.get_attribute('optionsdict')
print "element_by_xpath.get_attribute('optionsdict'): " + element_by_xpath.get_attribute('optionsdict')

driver.quit()
