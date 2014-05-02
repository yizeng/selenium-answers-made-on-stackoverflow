__question__ = "NoSuchElement Exception erron when using 'find_element_by_link_text'"
__link__ = "http://stackoverflow.com/questions/20410973"
__environment__ = "Windows 7, Python 2.7.5, Selenium 2.41.0, PhantomJS 1.9.7"

from selenium import webdriver

DEMO_PAGE = '''
	data:text/html,
	<div class="l-wrap">
		<h1 id="site-logo">
		<div id="nav-global">
			<h2 class="head"></h2>
			<ul class="global-nav">
				<li class="global-nav-item"></li>
				<li class="global-nav-item"><a class="global-nav-link" href="/learn/">Learn</a></li>
				<li class="global-nav-item"></li>
				<li class="global-nav-item"></li>
				<li class="global-nav-item global-nav-item-last buy-menu"></li>
				<li class="global-nav-item global-nav-addl"></li>
			</ul>
		</div>
		<a class="to-bottom" href="#l-footer">Jump to Bottom of Page</a>
	</div>
'''

driver = webdriver.PhantomJS()
driver.get(DEMO_PAGE)

element_by_css_selector = driver.find_element_by_css_selector("#nav-global a[href*='learn']")
element_by_xpath = driver.find_element_by_xpath(".//*[@id='nav-global']//a[contains(@href, 'learn')]")

print "element_by_css_selector.text: " + element_by_css_selector.text
print "element_by_xpath.text: " + element_by_xpath.text
