require "test_helper"
require "selenium-webdriver"

class SuccessfulLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  def test_pagination
    driver = Selenium::WebDriver.for(:chrome)
    driver.manage.timeouts.implicit_wait = 10

    driver.navigate.to('http://localhost:3000')

    driver.find_element(:link_text, "Log in").click

    email = driver.find_element(:id, "session_email")
    email.send_keys(@user.email)

    password = driver.find_element(id: "session_password")
    password.send_keys('password')

    submit = driver.find_element(:css,  ".btn.btn-primary")
    submit.click

    driver.find_element(:link_text, "Users").click

    driver.find_element(:link_text, "2").click

    account_link = driver.find_element(:css, "ul > li.prev.previous_page > a")
    assert_not(account_link.nil?)

    account_link = driver.find_element(:css, "ul > li.next.next_page > a")
    assert_not(account_link.nil?)

    end

  end