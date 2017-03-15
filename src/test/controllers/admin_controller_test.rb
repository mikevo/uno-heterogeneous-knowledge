require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = users(:admin)
  end

  test "should get users" do
    sign_in_user(@admin)

    get admin_users_url
    assert_response :success
  end

end
