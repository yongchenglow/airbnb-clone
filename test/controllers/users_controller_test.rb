require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should be able to go to login page" do
    get "/users/login"
    assert_response :success
  end

  test "should be able to go to sign up page" do
    get "/users/sign_up"
    assert_response :success
  end

  test "should be able to sign in successfully with valid information" do
    get "/users/login"
    sign_in users(:user1)
    post user_session_url
    follow_redirect!
    assert_response :success
  end
end
