require "test_helper"

class UserFlowTest < ActionDispatch::IntegrationTest
  test "should be able to go to login page" do
    get "/users/login"
    assert_select "h2", "Welcome Back!"
  end
end
