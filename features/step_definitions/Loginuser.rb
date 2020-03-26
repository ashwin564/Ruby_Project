require 'selenium-webdriver'


Given("User is on Nejm.org") do
  @driver.get "http://www.nejm.org" # This will visit to Nejm.org page
end

When("User enters the SignIn button") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  @driver.find_element(:css => "ul.g-nejm-group__user-tools>li>a.signin-header").click # User is navigated to login page of Nejm.org
end

And("User Enters valid username and password") do
  @driver.find_element(:id,"login").send_keys("autotest2003202020@nejmemail.com")
  @driver.find_element(:id,"password").send_keys("q@nejm1812")
end

And("User clicked on sign in") do
  @driver.find_element(:id,"btnSignIn").click
end

Then("current logged in user's name should displayed on login page") do
  @driver.find_element(:css => 'span[aria-expanded^="false"]>strong').text.include?("autotestfn autotestln")

end