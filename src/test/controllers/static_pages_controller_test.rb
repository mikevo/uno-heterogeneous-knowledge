require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get redirect to login if not logged in" do
    get root_path
    assert_redirected_to sign_in_url
  end

  test "should get redirect to dashboard if logged in" do
    sign_in_user(@user)

    get root_path
    assert_redirected_to dashboard_url
  end

end
