require "test_helper"
require "selenium-webdriver"

class NotSuccessfulSignupTest < ActionDispatch::IntegrationTest

  def test_alerts
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Sign up now!").click

    submit = driver.find_element(:name, "commit")
    submit.click

    message = driver.find_element(:css, ".alert-danger")
    assert_not(message.nil?)
    assert_equal(message.text,"The form contains 4 errors.")

  end
end