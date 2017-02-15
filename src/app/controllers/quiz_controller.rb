class QuizController < ApplicationController
  before_action :require_teacher, only: [:edit, :update, :destroy]

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz Created!"
      redirect_to rool_url
    else
      render 'static_pages/home'
    end
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
    redirect_to root_url
  end

  private
    def quiz_params
      params.require(:quiz).permit(:title)
    end

end
