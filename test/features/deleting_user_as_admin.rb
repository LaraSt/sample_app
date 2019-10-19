require "test_helper"
require "selenium-webdriver"

class DeletingUserAsAdmin < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  def test_alerts
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Log in").click

    email = driver.find_element(:id, "session_email")
    email.send_keys(@user.email)

    password = driver.find_element(id: "session_password")
    password.send_keys('password')

    submit = driver.find_element(:css, ".btn.btn-primary")
    submit.click

    driver.find_element(:link_text, "Users").click

    delete_link = driver.find_element(:link_text, "delete")
    delete_link.click

    driver.switch_to.alert.accept
    error_element = driver.find_element(:css, "div.alert.alert-success")
    assert_equal(error_element.text,"User deleted")
  end

end