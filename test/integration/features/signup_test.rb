require "test_helper"
require "selenium-webdriver"

class SignupTest < ActionDispatch::IntegrationTest
  def test_sanity
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Log in").click
    driver.find_element(:id, 'signup-link').click

    name = driver.find_element(:id, "user_name")
    name.send_keys('Test')

    email = driver.find_element(:id, "user_email")
    email.send_keys('test@gmail.com')

    password = driver.find_element(:id, "user_password")
    password.send_keys('1234qwer')

    confirm_password = driver.find_element(:id, "user_password_confirmation")
    confirm_password.send_keys('1234qwer')

    submit = driver.find_element(:name, "commit")
    submit.click

    message = driver.find_element(:css, ".alert-success")
    assert_not(message.nil?)
    assert_equal(message.text,"Welcome to the Sample App!")

  end
end