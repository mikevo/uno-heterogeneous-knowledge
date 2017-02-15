class CourseController < ApplicationController
  before_action :require_teacher, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
      if @course.update(course_params)
        redirect_to @course
      else
        render 'edit'
      end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to root_url
  end

  private
    def course_params
      params.require(:course).permit(:title)
    end

end
