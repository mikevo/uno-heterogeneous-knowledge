require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  test "should not save quiz without title" do
    quiz = Quiz.new
    assert_not quiz.save
  end
end
