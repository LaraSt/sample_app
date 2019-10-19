require "test_helper"
require "selenium-webdriver"

class ExistingUserSignupTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  def test_alerts
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Sign up now!").click

    name = driver.find_element(:id, "user_name")
    name.send_keys(@user.name)

    email = driver.find_element(:id, "user_email")
    email.send_keys(@user.email)

    password = driver.find_element(:id, "user_password")
    password.send_keys('password')

    confirm_password = driver.find_element(:id, "user_password_confirmation")
    confirm_password.send_keys('password')

    submit = driver.find_element(:name, "commit")
    submit.click
    message = driver.find_element(:css, ".alert-danger")
    assert_equal(message.text,"The form contains 1 error.")
    error_element = driver.find_element(:css, "#error_explanation > ul > li")
    assert_equal(error_element.text,"Email has already been taken")
  end

end