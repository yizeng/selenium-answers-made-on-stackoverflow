# Question:: How to find <a> using selenium?
# Link:: http://stackoverflow.com/questions/21965734
# Environment:: Windows 7, Ruby 2.0.0, Selenium 2.41.0, PhantomJS 1.9.7

require 'selenium-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div class="page-characterselect">
    <div class="charselect"><div>
      <ul>
      <li>
        <a class="Player_Controller" onclick="client.characterSelect('XYZ@ABC');">
          <h4 class="char-list-name">XYZ</h4>
          <h5 class="char-list-level">Level <span>24</span></h5>
          <h5 class="char-list-class">Control Wizard</h5>
          <h5 class="char-list-race">Sun Elf</h5>
        </a>
      </li>
      </ul>
    </div></div>
  </div>
eos

driver = Selenium::WebDriver.for :phantomjs
driver.get(DEMO_PAGE)

link_by_css = driver.find_element(:css => ".charselect .Player_Controller")
link_by_xpath = driver.find_element(:xpath => ".//div[@class='charselect']//a[@class='Player_Controller']")

puts "link_by_css.text = '#{link_by_css.text}'\n\n"
puts "link_by_xpath.text = '#{link_by_xpath.text}'"
