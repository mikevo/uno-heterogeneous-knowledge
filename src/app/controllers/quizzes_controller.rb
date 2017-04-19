class QuizzesController < ApplicationController
    authorize_resource :class => false

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
    @course = Course.all
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz Created!"
      redirect_to @quiz
    else
      # TODO: Add some feedback for the user
      render 'new'
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
    @questions= Question.where(quiz_id: params[:id])

    
  end

  def update
    @quiz = Quiz.find(params[:id])
      if @quiz.update(quiz_params)
        redirect_to @quiz
      else
        render 'edit'
      end

  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    flash[:success] = "Quiz deleted."
    redirect_to quizzes_url


  end

  def attempt
    @quiz= Quiz.find(params[:id])
    @questions= Question.where(quiz_id: params[:id])
    @options= Answer.all
  end

  def result
   @quiz= Quiz.find(params[:id])
   @questions= Question.where(quiz_id: params[:id])
   
   @marks=0
   count=1
    @questions.each do |q|

      answer= params[:"question#{count}"]

      if( Answer.where(id: answer).pluck(:is_correct)[0] == "correct" )
        @marks = @marks + 1
      end 

      count= count+1
    end

    Result.create(student_id: current_user.id, quiz_id: params[:id], marks: @marks)

  end

  private
    def quiz_params
      params.require(:quiz).permit(:title,:course_id, questions_attributes: [:id, :question, :done , :_destroy, answers_attributes: [:id, :option,:is_correct, :_destroy]])
    end

end
