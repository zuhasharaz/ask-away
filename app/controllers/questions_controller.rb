class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_question, only: [:show, :destroy]

  def show
    @answers = @question.answers
  end

  def index
    @questions = Question.all.order("created_at DESC")
  end

  def new
    @question = Question.new
  end

  def update
    if @question.update(question_params)
      flash[:notice] = "Question was updated successfully."
      redirect_to question_path
    else
      render 'edit'
    end
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      flash[:notice] = "Your question was created successfully."
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
