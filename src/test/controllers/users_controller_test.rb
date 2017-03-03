require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up" do
    get sign_up_url
    assert_response :success
  end

  test "should create a user with correct params" do
    post users_url, params: { user: {username: "Test", email: "test@example.com", password: "test", password_confirmation: "test"} }
    assert_redirected_to dashboard_path
  end

  test "should not create a user without correct params" do
    post users_url, params: { user: {username: "Test", email: "test@example.com", password: "test", password_confirmation: "test_wrong"} }
    assert_template :new
  end
end
