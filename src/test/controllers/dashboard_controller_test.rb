require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_url
    assert_response :found  #responds with 302 redirect to user's profile
  end

end
