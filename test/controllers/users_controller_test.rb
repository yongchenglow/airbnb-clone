require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # Session
  test "Given user has not login, when user go to login page, then success" do
    get "/users/login"
    assert_response :success
  end

  # Registration
  test "Given user has not login, when user go to sign up page, then success" do
    get "/users/sign_up"
    assert_response :success
  end

  test "Given user has not login, when user go to edit user page, then redirected to login" do
    get "/users/edit"
    assert_redirected_to "/users/login"
  end

  test "Given user has not login, when user go to user show page, then success" do
    get "/users/1"
    assert_response :success
  end

  # Password
  test "Given user has not login, when user go to forget password page, then success" do
    get "/users/password/new"
    assert_response :success
  end

  test "Given user has not login, when user go to edit password page, then redirected to login" do
    get "/users/password/edit"
    assert_redirected_to "/users/login"
  end

  test "should be able to sign in successfully with valid information" do
    get "/users/login"
    sign_in users(:user1)
    post user_session_url
    follow_redirect!
    assert_response :success
  end
end
