class QuizzesController < ApplicationController
  skip_authorization_check

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
	3.times do
		question = @quiz.questions.build
		4.times { question.answers.build }
	end
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

  private
    def quiz_params
      params.require(:quiz).permit(:title, questions_attributes: [:id, :content, :_destroy, answers_attributes: [:id, :content, :_destroy]])
    end

end
