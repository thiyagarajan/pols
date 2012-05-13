require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get myaccount" do
    get :myaccount
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end
