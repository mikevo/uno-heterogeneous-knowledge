require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
    @admin = users(:admin)
  end

  test "should get index" do
    sign_in_user(@admin)
    get courses_url
    assert_response :success
  end

  test "should get new" do
    sign_in_user(@admin)
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    sign_in_user(@admin)
    assert_difference('Course.count') do
      post courses_url, params: { course: { name: @course.name } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    sign_in_user(@admin)
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    sign_in_user(@admin)
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    sign_in_user(@admin)
    patch course_url(@course), params: { course: { name: @course.name } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    sign_in_user(@admin)
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
