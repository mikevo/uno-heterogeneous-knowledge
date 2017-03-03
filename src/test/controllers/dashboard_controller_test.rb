require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should not get index without sign_in" do
    get dashboard_url
    assert_response :found
  end

  test "should get index with sign_in" do
    sign_in_user(@user)

    get dashboard_url
    assert_response :success
  end

end
