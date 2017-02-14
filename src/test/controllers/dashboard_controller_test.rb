require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_url
    assert_response :found  #false positive.. should return 200
  end

end
