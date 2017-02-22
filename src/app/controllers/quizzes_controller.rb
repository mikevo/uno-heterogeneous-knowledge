class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz Created!"
      redirect_to root_url
    else
      redirect_to root_url
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
    redirect_to root_url
  end

  private
    def quiz_params
      params.require(:quiz).permit(:title)
    end

end
