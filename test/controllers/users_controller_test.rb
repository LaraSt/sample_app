require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end
  
  test "should redirect index when not logged in" do
    get :index
    assert_redirected_to login_url
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'User.count' do
      delete :destroy, params: {id: @user.id}
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@other_user)
    assert_no_difference 'User.count' do
    delete :destroy, params: {id: @user.id}
    end
    assert_redirected_to root_url
  end

    #test "should not allow the admin attribute to be edited via the web" do
      #log_in_as(@other_user)
      # {assert_not @other_user.admin?
      # patch :update, id: @other_user, params: {user: { password: "foobar",
      #                                         password_confirmation: "foobar",
      #                                         admin: false }}
      # assert_not @other_user.flash.admin?}
    #end
end
