class AddQuizIdToQuestionsController < ApplicationController
  before_action :set_add_quiz_id_to_question, only: [:show, :edit, :update, :destroy]

  # GET /add_quiz_id_to_questions
  # GET /add_quiz_id_to_questions.json
  def index
    @add_quiz_id_to_questions = AddQuizIdToQuestion.all
  end

  # GET /add_quiz_id_to_questions/1
  # GET /add_quiz_id_to_questions/1.json
  def show
  end

  # GET /add_quiz_id_to_questions/new
  def new
    @add_quiz_id_to_question = AddQuizIdToQuestion.new
  end

  # GET /add_quiz_id_to_questions/1/edit
  def edit
  end

  # POST /add_quiz_id_to_questions
  # POST /add_quiz_id_to_questions.json
  def create
    @add_quiz_id_to_question = AddQuizIdToQuestion.new(add_quiz_id_to_question_params)

    respond_to do |format|
      if @add_quiz_id_to_question.save
        format.html { redirect_to @add_quiz_id_to_question, notice: 'Add quiz id to question was successfully created.' }
        format.json { render :show, status: :created, location: @add_quiz_id_to_question }
      else
        format.html { render :new }
        format.json { render json: @add_quiz_id_to_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_quiz_id_to_questions/1
  # PATCH/PUT /add_quiz_id_to_questions/1.json
  def update
    respond_to do |format|
      if @add_quiz_id_to_question.update(add_quiz_id_to_question_params)
        format.html { redirect_to @add_quiz_id_to_question, notice: 'Add quiz id to question was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_quiz_id_to_question }
      else
        format.html { render :edit }
        format.json { render json: @add_quiz_id_to_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_quiz_id_to_questions/1
  # DELETE /add_quiz_id_to_questions/1.json
  def destroy
    @add_quiz_id_to_question.destroy
    respond_to do |format|
      format.html { redirect_to add_quiz_id_to_questions_url, notice: 'Add quiz id to question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_quiz_id_to_question
      @add_quiz_id_to_question = AddQuizIdToQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_quiz_id_to_question_params
      params.fetch(:add_quiz_id_to_question, {})
    end
end
