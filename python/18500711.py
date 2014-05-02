__question__ = "Read a hidden value in a div using Selenium Python binding"
__link__ = "http://stackoverflow.com/questions/18500711"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

DEMO_PAGE = '''
	data:text/html,
	<div id="code_area">
		<p id="captcha_blurb">Please enter the security code below</p>
		<div id="capchta_area">
			<input id="current_captcha" type="hidden" value="XXXX" />
			<input id="captcha" class="reg_form_input" value="" name="code" placeholder="Enter Security Code" title=" Please Enter These Characters." />
		</div>
	</div>
'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

captcha_value = driver.find_element_by_id("current_captcha").get_attribute("value")
captcha = driver.find_element_by_id("captcha")
captcha.send_keys(captcha_value)

print "captcha_value = " + captcha.get_attribute('value')