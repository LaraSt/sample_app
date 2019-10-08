require "test_helper"
require "selenium-webdriver"

class SuccessfulLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:test_user)
  end

  def test_sanity
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Log in").click

    email = driver.find_element(:id, "session_email")
    email.send_keys(@user.email)

    password = driver.find_element(id: "session_password")
    password.send_keys('password')

    remember_me = driver.find_element(id: "session_remember_me")
    remember_me.click

    submit = driver.find_element(:css,  ".btn.btn-primary")
    submit.click

    account_link = driver.find_element(:link_text, "Account")
    assert_not(account_link.nil?)
  end
end