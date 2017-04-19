require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should not get quizzes index without sign_in" do
    get quizzes_url
    assert_response :found
  end

  test "should get quizzes index with sign_in" do
    sign_in_user(@user)

    get quizzes_url
    assert_response :success
  end
end
