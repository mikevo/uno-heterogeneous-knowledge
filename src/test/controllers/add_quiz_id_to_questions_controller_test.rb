require 'test_helper'

class AddQuizIdToQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_quiz_id_to_question = add_quiz_id_to_questions(:one)
  end

  test "should get index" do
    get add_quiz_id_to_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_add_quiz_id_to_question_url
    assert_response :success
  end

  test "should create add_quiz_id_to_question" do
    assert_difference('AddQuizIdToQuestion.count') do
      post add_quiz_id_to_questions_url, params: { add_quiz_id_to_question: {  } }
    end

    assert_redirected_to add_quiz_id_to_question_url(AddQuizIdToQuestion.last)
  end

  test "should show add_quiz_id_to_question" do
    get add_quiz_id_to_question_url(@add_quiz_id_to_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_quiz_id_to_question_url(@add_quiz_id_to_question)
    assert_response :success
  end

  test "should update add_quiz_id_to_question" do
    patch add_quiz_id_to_question_url(@add_quiz_id_to_question), params: { add_quiz_id_to_question: {  } }
    assert_redirected_to add_quiz_id_to_question_url(@add_quiz_id_to_question)
  end

  test "should destroy add_quiz_id_to_question" do
    assert_difference('AddQuizIdToQuestion.count', -1) do
      delete add_quiz_id_to_question_url(@add_quiz_id_to_question)
    end

    assert_redirected_to add_quiz_id_to_questions_url
  end
end
