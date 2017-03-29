class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  authorize_resource :class => false

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:success] = 'Course was successfully created.'
      redirect_to @course
    else
      render :new
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      flash[:success] = 'Course was successfully updated.'
      redirect_to @course
    else
      render :edit
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    flash[:success] = 'Course was successfully destroyed.'
    redirect_to courses_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :teacher_id, student_ids: [])
    end
end
