# Question:: Unable to click dropdown from combo box
# Link:: http://stackoverflow.com/questions/21529970
# Environment:: Linux Mint 16, Ruby 2.1.1, Selenium 2.41.0, PhantomJS 1.9.7

require 'watir-webdriver'

DEMO_PAGE = <<-eos
  data:text/html,
  <div class="header">Deposit to</div>
  <div class="dropdown" ng-class="secondaryClass()">
    <div class="dd-field" on="!selectedAccount" ng-switch="">
      -- ngSwitchWhen: false -->
      <!-- ngSwitchDefault: -->
      <div class="dd-label ng-scope" ng-switch-default="">Select an account</div>
      <div class="dd-arrow-box">
        <div class="dd-arrow"></div>
      </div>
    </div>
  </div>
eos

browser = Watir::Browser.new :phantomjs
browser.goto(DEMO_PAGE)

begin
  browser.divs(:class => 'dd-field').click # Expect "undefined method `click' for # (NoMethodError)"
rescue Exception => e 
  puts "Expect: 'undefined method `click' for #<Watir::DivCollection:0x0000000*>'"
  puts "Actual: '#{e.to_s}'"
end

browser.div(:class => 'dd-field').click
