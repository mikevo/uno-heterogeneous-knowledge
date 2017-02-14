require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  
  test "should get index" do
    sign_in_user(@user)
    
    get dashboard_url
    assert_response :success
  end

end
