class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @user = current_user
  end

  def index
    @questions = Question.all.order("created_at DESC")
  end

  def new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    @question.save
    redirect_to questions_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
