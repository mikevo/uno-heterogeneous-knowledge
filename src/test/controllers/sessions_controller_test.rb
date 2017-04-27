require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should show login form" do
    get sign_in_url
    assert_template :new
  end
end
