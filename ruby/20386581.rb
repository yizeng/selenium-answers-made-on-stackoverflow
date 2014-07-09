# Question:: How to get a text from following div using Selenium Webdriver
# Link:: http://stackoverflow.com/questions/20386581
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div id="ctrlNotesWindow">
    <div class="notesData">
      <div class="notesDate" data-bind="text: $.format('{0} - {1}', moment(Date).format('MMM DD, YYYY h:mm a'), User)">Text1</div>
      <div class="notesText" data-bind="text: Note">Text2 on next line</div>
    </div>
  </div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

element = driver.find_element(:css => "#ctrlNotesWindow .notesData > .notesDate")
puts "element.text = '#{element.text}'"

driver.quit
