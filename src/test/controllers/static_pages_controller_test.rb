require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get :/
    assert_response :success
    assert_template layout: 'layouts/application'
  end

end
