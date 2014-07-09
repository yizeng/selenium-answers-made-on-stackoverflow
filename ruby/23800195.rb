# Question:: Auto download PDF in Firefox
# Link:: http://stackoverflow.com/questions/23800195
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.42.0, Firefox 24.6.0 ESR

require 'selenium-webdriver'

profile = Selenium::WebDriver::Firefox::Profile.new
profile["browser.download.folderList"] = 2 # use a custom folder defined in "browser.download.dir".
profile["browser.download.dir"] = 'C:\\'
profile["browser.helperApps.neverAsk.saveToDisk"] = 'application/pdf'

# disable Firefox built-in PDF viewer
profile["pdfjs.disabled"] = true

# disable Adobe Acrobat plugin
profile["plugin.scan.Acrobat"] = "99.0" # set the minimium allowed version to something large enough
profile["plugin.scan.plid.all"] = false

driver = Selenium::WebDriver.for :firefox, :profile => profile
driver.get('http://static.mozilla.com/moco/en-US/pdf/mozilla_privacypolicy.pdf')

driver.quit
