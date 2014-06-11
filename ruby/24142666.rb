# Question:: How to bypass website's security certificate in IE using Ruby/Selenium WebDriver
# Link:: http://stackoverflow.com/questions/24142666
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, IE 10, IEDriver 2.42.0

require 'selenium-webdriver'

site_with_untrusted_certificate = ARGV[0]

driver = Selenium::WebDriver.for :ie
driver.get(site_with_untrusted_certificate)
driver.get("javascript:document.getElementById('overridelink').click()")
